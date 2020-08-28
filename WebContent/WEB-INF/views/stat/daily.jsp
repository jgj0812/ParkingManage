<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %> 

<link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
<script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<style>
.py50 {padding: 50px 0;}
.v-mid{vertical-align: middle!important;}
table thead th{padding: 6px 10px!important;}
table tbody td{padding: 4px 10px!important;}
</style>
<div class="container py50">
	<table id="example" class="table table-striped table-bordered text-center" style="width:100%;height:80%;">
	    <colgroup>
	        <col width="12.5%">
	        <col width="12.5%">
	        <col width="12.5%">
	        <col width="12.5%">
	        <col width="12.5%">
	        <col width="12.5%">
	        <col width="12.5%">
	        <col width="12.5%">
	    </colgroup>
        <thead>
            <tr>
                <th rowspan=2 class="v-mid">시간</th>
                <th colspan=3>입차 수</th>
                <th colspan=3>출차 수</th>
                <th rowspan=2 class="v-mid">사용요금</th>
            </tr>
            <tr>
                <th>일 반</th>
                <th>월정액</th>
                <th>합 계</th>
                <th>일 반</th>
                <th>월정액</th>
                <th>합 계</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>0</td>
                <td>12</td>
                <td>3</td>
                <td>9</td>
                <td>10</td>
                <td>5</td>
                <td>5</td>
                <td>100,000</td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <th>합계</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
                <th>2011/04/25</th>
                <th>$320,800</th>
            </tr>
        </tfoot>
    </table>
</div>
<script>
$(document).ready(function() {
    $('#example').DataTable( {
    	// 표시 건수기능 숨기기
    	lengthChange: false,
    	// 검색 기능 숨기기
    	searching: false,
    	// 정보 표시 숨기기
    	info: false,
    	// 페이징 기능 숨기기
    	paging: false,
    	
    } );
    
    $('#example tbody').on( 'click', 'tr', function () {
        $(this).toggleClass('selected');
    } );
    
} );
</script>
  
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>