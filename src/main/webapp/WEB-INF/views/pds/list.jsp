<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div id="main">
	<div>
	    <i class="fas fa-save fa-2x"> 자료실</i>
	    <hr>
	</div> <!-- 페이지 타이틀 -->

    <div class="row">
        <div class="col-5 offset-1">
            <div class="form-group row">
                <select class="form-control col-3 border-primary" name="findtype" id="findtype">
                    <option value="title">제목</option>
                    <option value="titcont">제목+내용</option>
                    <option value="userid">작성자</option>
                    <option value="contents">내용</option>
                </select>&nbsp;
                <input type="text" name="findkey" id="findkey" class="form-control col-4 border-primary">&nbsp;
                <button type="button" id="findbtn" class="btn btn-primary"><i class="fas fa-search"></i> 검색</button>
            </div>
        </div>
        <div class="col-5 text-right">
            <button type="button" class="btn btn-light" id="newpdsbtn"><i class="fas fa-plus-circle"> 새 글 쓰기</i></button>
        </div>
    </div> <!-- 검색, 버튼 -->

    <div class="row">
        <div class="col-10 offset-1">
            <table class="table table-striped text-center table-hover">
                <thead style="background: #dff0d8">
                    <tr>
                        <th style="width: 7%">번호</th>
                        <th style="">제목</th>
                        <th style="width: 12%">작성자</th>
                        <th style="width: 10%">작성일</th>
                        <th style="width: 7%">추천</th>
                        <th style="width: 7%">조회</th>
	                </tr>
	            </thead>
	            <tbody>
                    <tr class="text-danger bg-warning">
                        <th>공지</th>
                        <th><span class="badge badge-danger">Hot</span> 집에 가고 싶어요!</th>
                        <th>운영자</th>
                        <th>2021-05-21</th>
                        <th>100</th>
                        <th>1000</th>
                    </tr>
                    <c:forEach var="p" items="${pds}">
                        <tr>
                            <td>${p.pno}</td>
                            <td><a href="/pds/view?pno=${p.pno}">${p.title}</a></td>
                            <td>${p.userid}</td>
                            <td>${fn:substring(p.regdate, 0, 10)}</td>
                            <td>${p.thumbup}</td>
                            <td>${p.views}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <ul class="pagination justify-content-center">
                <li class="page-item"><a href="#" class="page-link">이전</a></li>
                <li class="page-item active"><a href="#" class="page-link">1</a></li>
                <li class="page-item"><a href="#" class="page-link">2</a></li>
                <li class="page-item"><a href="#" class="page-link">3</a></li>
                <li class="page-item"><a href="#" class="page-link">4</a></li>
                <li class="page-item"><a href="#" class="page-link">5</a></li>
                <li class="page-item"><a href="#" class="page-link">6</a></li>
                <li class="page-item"><a href="#" class="page-link">7</a></li>
                <li class="page-item"><a href="#" class="page-link">8</a></li>
                <li class="page-item"><a href="#" class="page-link">9</a></li>
                <li class="page-item"><a href="#" class="page-link">10</a></li>
                <li class="page-item"><a href="#" class="page-link">다음</a></li>
            </ul>
        </div>
    </div> <!-- 페이지 네이션 -->
</div>

<!-- jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<script>
   $('#newbdbtn').click(function() { location.href='pds/write.tiles'; })
   $('#joinbtn').click(function() { location.href='join/agree.tiles'; })
</script>
