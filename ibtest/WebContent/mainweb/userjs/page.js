var reg=/^\d+$/;

function initPage(currentPageNum){
//	document.pageForm.currentPageNo.value=currentPageNum;
	url="../ibtest/user/select.do?currentPageNo="+currentPageNum+"&pageSize=6";
	window.location.href=url;
//	document.pageForm.submit();
}