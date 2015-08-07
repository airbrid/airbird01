/**
 * 数据分页处理类
 */
package com.zte.demo.common;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import sun.nio.cs.ext.TIS_620;

public class Page {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	private final static int CONTANTPage = 6;
	private int curPage = 1; // 当前页
	private int pageSize = 5; // 每页多少行
	private int totalRow; // 共多少行
	private int start;// 当前页起始行
	private int end;// 结束行
	private int totalPage; // 共多少页
	private Collection data; // 当前页面类中的数据

	/**
	 * 构造函数，空页面没有数据
	 */
	public Page() {
		this(0, 0, 10, new ArrayList());
	}

	/**
	 * 默认构造函数
	 * 
	 * @param start
	 *            //当前页面的开始行
	 * @param totalRow
	 *            //总行数
	 * @param pageSize
	 *            //每页显示数量
	 * @param data
	 *            //当前页面中的数据
	 */
	public Page(int start, int totalRow, int pageSize, List data) {
		// TODO Auto-generated constructor stub
		this.pageSize = pageSize;
		this.start = start;
		this.totalRow = totalRow;
		this.setData(data);
		this.curPage = this.getCurPage();
		this.totalPage = this.getTotalPage();

		int mod = this.totalRow % this.pageSize;// 定于最后一页的数据不足当前页面显示的条数的情况下，总页数加1
		if (mod > 0) {
			this.totalPage++;
		}
	}

	/**
	 * 
	 * 默认构造函数
	 * 
	 * @param start
	 *            //当前页面的开始行
	 * @param totalRow
	 *            //总行数
	 * @param pageSize
	 *            //每页显示数量
	 * @param data
	 *            //当前页面中的数据
	 * @param curPage
	 *            // 当前页数
	 */

	public Page(int start, int totalRow, int pageSize, int curPage, List data) {
		// TODO Auto-generated constructor stub
		this.pageSize = pageSize;
		this.start = start;
		this.totalRow = totalRow;
		this.setData(data);
		this.curPage = this.getCurPage();
		this.totalPage = this.getTotalPage();

		int mod = this.totalRow % this.pageSize;// 定于最后一页的数据不足当前页面显示的条数的情况下，总页数加1
		if (mod > 0) {
			this.totalPage++;
		}
	}

	/**
	 * 是否还有下一页
	 * 
	 * @return
	 */
	public boolean hashNextPage() {
		return (this.getCurPage() < this.getTotalPage());
	}

	/**
	 * 是否有上一页
	 * 
	 * @return
	 */
	public boolean hashPreviousPage() {
		return (this.getCurPage() > 1);
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		if (curPage < 1) {
			curPage = 1;
		} else {
			start = pageSize * (curPage - 1);
		}
		end = start + pageSize > totalRow ? totalRow : start + pageSize;
		this.curPage = curPage;
	}

	public int getStart() {
		// start=curPage*pageSize;
		return start;
	}

	public int getEnd() {

		return end;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRow() {
		return totalRow;
	}

	public void setTotalRow(int totalRow) {
		totalPage = (totalRow + pageSize - 1) / pageSize;
		this.totalRow = totalRow;
		if (totalPage < curPage) {
			curPage = totalPage;
			start = pageSize * (curPage - 1);
			end = totalRow;
		}
		end = start + pageSize > totalRow ? totalRow : start + pageSize;
	}

	public int getTotalPage() {
		if(totalRow%pageSize ==0){
			return totalRow / pageSize;
		}else{
			return totalRow /pageSize +1;
		}
	}

	// 第一页
	public final int getFirstPage() {
		return 1;
	}

	// 最后一页
	public final int getLastPage() {
		return this.totalPage-1;
	}

	// 上一页
	public final int getPerPage() {
		if ((this.curPage - 1) < 1) {
			return 1;
		}
		return this.curPage - 1;
	}

	// 下一页
	public final int getNextPage() {
		if ((this.curPage + 1) > this.totalPage) {
			return this.totalPage;
		}
		return this.curPage + 1;
	}

	// 跳转到某一页面
	public int getGotoPage(int gocurPage) {
		if (gocurPage > this.totalPage || gocurPage < 1) {
			return this.curPage;
		}
		// this.curPage = gocurPage;
		return gocurPage;
	}

	//获取每页第一条数据
	public static int getSartOfPage(int pageNo){
		return (pageNo-1)* 5;
	}
	public String getPageString() {
		StringBuffer bufferstring = new StringBuffer();
		bufferstring.append("每页" + this.getPageSize() + "条记录&nbsp;");
		bufferstring.append("共" + this.getTotalRow() + "条记录&nbsp;&nbsp;");
		bufferstring.append("第" + this.getCurPage() + "页&nbsp;&nbsp;");
		bufferstring.append("共" + this.getTotalPage() + "页&nbsp;&nbsp;");

		if (this.hashPreviousPage()) {
			bufferstring.append("<span class='splitPage' onclick=\"initPage("
					+ this.getFirstPage() + ");" + "\">首页</span>&nbsp;&nbsp;");
			bufferstring.append("<span class='splitPage' onclick=\"initPage("
					+ this.getPerPage() + ");" + "\">上页</span>&nbsp;&nbsp;");
		} else {
			bufferstring.append("首页&nbsp;&nbsp;");
			bufferstring.append("上页&nbsp;&nbsp;");
		}

		if (this.hashNextPage()) {
			bufferstring.append("<span class='splitPage' onclick=\"initPage("
					+ this.getNextPage() + ");" + "\">下页</span>&nbsp;&nbsp;");
			bufferstring.append("<span class='splitPage' onclick=\"initPage("
					+ this.getLastPage() + ");" + "\">尾页</span>&nbsp;&nbsp;");
		} else {
			bufferstring.append("下页&nbsp;&nbsp;");
			bufferstring.append("尾页&nbsp;&nbsp;");
		}
		return bufferstring.toString();
	}

	public Collection getData() {
		return data;
	}

	public void setData(Collection data) {
		this.data = data;
	}

}
