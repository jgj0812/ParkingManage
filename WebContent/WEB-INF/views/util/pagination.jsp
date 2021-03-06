<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<style>


	.page-item.active .page-link {
    z-index: 3;
    color: #fff;
    background-color: black;
    border-color: #4e73df;
}
	.page-link {
	color: black;
	} 



</style>


	<ul class="pagination justify-content-center">
		<c:if test="${pagination.curPage ne 1}">
            <li class="page-item"><a class="page-link" href="#" onClick="fn_paging('${pagination.prevPage }')">이전</a></li>
        </c:if>
        <c:if test="${pagination.endPage ne 1}">
            <c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
				<c:choose>
				    <c:when test="${pageNum eq  pagination.curPage}">
				    	<li class="page-item active"><a class="page-link" href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a></li>
					</c:when>
					<c:otherwise>
				    	<li class="page-item"><a class="page-link" href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a></li>
			        </c:otherwise>
			    </c:choose>
			</c:forEach>
        </c:if>
		<c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
            <li class="page-item"><a class="page-link" href="#" onClick="fn_paging('${pagination.nextPage }')">다음</a></li>
        </c:if>
	</ul> 