package com.zte.demo.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.Consts;
import org.apache.http.HeaderElement;
import org.apache.http.HeaderElementIterator;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.entity.ContentType;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicHeaderElementIterator;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;


public class HttpTest {
	
	public static void main(String[] args) throws IOException  
    {  
		HttpTest test = new HttpTest();
//		test.test1();
//		test.test2();
		test.test5();
    }
	public void test1() throws IOException{
		CloseableHttpClient httpclient = HttpClients.createDefault();
        try {
            HttpGet httpget = new HttpGet("http://localhost/ibtest/user/selectclient.do");
            System.out.println("Executing request " + httpget.getURI());
            CloseableHttpResponse response = httpclient.execute(httpget);
            try {
                System.out.println("----------------------------------------");
                System.out.println(response.getStatusLine());
                System.out.println(EntityUtils.toString(response.getEntity()));
                // Do not feel like reading the response body
                // Call abort on the request object
                httpget.abort();
            } finally {
                response.close();
            }
        } catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			httpclient.close();
		}
	}

	public void test2() throws IOException{
		CloseableHttpClient httpclient = HttpClients.createDefault();
		URI uri = null;
			try {
				uri = new URIBuilder().setScheme("http").setHost("localhost").setPath("/ibtest/user/selectparament.do")
						.setParameter("resultString", "success").build();
			} catch (URISyntaxException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		HttpGet request = new HttpGet(uri);
		CloseableHttpResponse response = httpclient.execute(request);
		try {
			if(response.getStatusLine().getStatusCode()==200){
			System.out.println(EntityUtils.toString(response.getEntity()));
			}else{
				System.out.println("error");
			}
		} catch (Exception e) {
			// TODO: handle exception
			response.close();
		}
		finally{
			httpclient.close();
		}
	}

	//Ϊuri����
	public void test3() throws IOException{
		CloseableHttpClient httpclient = HttpClients.createDefault();
		
		HttpPost requestPost = new HttpPost("http://localhost/ibtest/user/adduser.do");
		List<BasicNameValuePair> list = new ArrayList<BasicNameValuePair>();
		list.add(new BasicNameValuePair("username", "luhe"));
		list.add(new BasicNameValuePair("password","luhehe"));
		
		UrlEncodedFormEntity entity = new UrlEncodedFormEntity(list,Consts.UTF_8);
		requestPost.setEntity(entity);
		System.out.println(EntityUtils.toString(entity));
		try {
			CloseableHttpResponse response = httpclient.execute(requestPost);
			
			if(response.getStatusLine().getStatusCode()==200){
				System.out.println(EntityUtils.toString(response.getEntity()));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}	
	}

	public void test4(){
		CloseableHttpClient httpclient = HttpClients.createDefault();
		
		ResponseHandler<Object> handler = new ResponseHandler<Object>() {

			@Override
			public Object handleResponse(HttpResponse response)
					throws ClientProtocolException, IOException {
				// TODO Auto-generated method stub
				HttpEntity entity = response.getEntity();
				
				if(entity.equals(null)){
					throw new ClientProtocolException("");
				}
				
				if(response.getStatusLine().getStatusCode()==200){
					ContentType contentType = ContentType.getOrDefault(entity);
					Charset charset = contentType.getCharset();
					
					InputStreamReader reader = new InputStreamReader(entity.getContent(), charset);
					BufferedReader br = new BufferedReader(reader);
					StringBuffer sb = new StringBuffer();
					char[] buffer = new char[1024];
					while(br.read(buffer)!=-1){
						sb.append(new String(buffer));
					}
					return sb.toString();
				}
				return null;
			}
		};
		URI uri = null;
		try {
			uri = new URIBuilder().setScheme("http").setHost("localhost").setPath("/ibtest/user/adduser.do")
//					.setParameter("username", "haha")
//					.setParameter("password", "heihei")
					.build();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpPost requestPost = new HttpPost(uri);
		//���ñ?�ύ������Ҫ�ύ��������ó�����Ҫ�ı?����Form
		List<BasicNameValuePair> list = new ArrayList<BasicNameValuePair>();
		list.add(new BasicNameValuePair("username", "biubiu"));
		list.add(new BasicNameValuePair("password", "password"));
		
		UrlEncodedFormEntity entity = new UrlEncodedFormEntity(list,Consts.UTF_8);
		requestPost.setEntity(entity);
		
		try {
			Object object = httpclient.execute(requestPost, handler);
			System.out.println("���ؽ��"+object);
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void test5(){
		ConnectionKeepAliveStrategy strategy = new ConnectionKeepAliveStrategy() {
			
			@Override
			public long getKeepAliveDuration(HttpResponse response, HttpContext context) {
				// TODO Auto-generated method stub
				HeaderElementIterator iterator = new BasicHeaderElementIterator(response.headerIterator(HTTP.CONN_KEEP_ALIVE));
				while(iterator.hasNext()){
					 HeaderElement he = iterator.nextElement();
	                    String param = he.getName();
	                    String value = he.getValue();
	                    if (value != null && param.equalsIgnoreCase("timeout")) {
	                        try {
	                            System.out.println(value);
	                            return Long.parseLong(value) * 1000;
	                        } catch (NumberFormatException ignore) {
	                            ignore.printStackTrace();
	                        }
	                    }
				}
				long keepAlive = 0;
				if (keepAlive == -1) {
                    keepAlive = 30 * 1000;
                    System.out.println(keepAlive);
                }
				return keepAlive;
			}
		};
		
//		CloseableHttpClient httpClients = HttpClients.createDefault();
		CloseableHttpClient httpClients = HttpClients.custom().setKeepAliveStrategy(strategy).build();
		
		URI uri = null;
		
		try {
			uri = new URIBuilder().setScheme("http")
					.setHost("localhost").setPath("/ibtest/user/adduser.do").build();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		HttpPost requestPost = new HttpPost(uri);
		List<BasicNameValuePair> list = new ArrayList<BasicNameValuePair>();
		list.add(new BasicNameValuePair("username", "value"));
		list.add(new BasicNameValuePair("password", "value"));
		
		UrlEncodedFormEntity entity = new UrlEncodedFormEntity(list,Consts.UTF_8);
		requestPost.setEntity(entity);
		
		try {
			CloseableHttpResponse response = httpClients.execute(requestPost);
			if(response.getStatusLine().getStatusCode()==200){
				System.out.println(EntityUtils.toString(response.getEntity()));
			}
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//
}
