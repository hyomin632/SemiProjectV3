<%@ page pageEncoding="UTF-8"%>

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
            <button type="button" class="btn btn-light" id="newbdbtn"><i class="fas fa-plus-circle"> 새 글 쓰기</i></button>
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
                    <tr>
                        <td>1</td>
                        <td><a href="view.html">[날씨] 우산 안 갖고 나올 때마다 비가 오죠?</a></td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>13</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>14</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
                    <tr>
                        <td>15</td>
                        <td>요즘 어깨 키우는 게 재밌어요</td>
                        <td>Celeste</td>
                        <td>2021-05-21</td>
                        <td>19</td>
                        <td>84</td>
                    </tr>
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

<!-- 로그인 폼 모달 -->
<div class="modal" id="loginfrm" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3>로그인</h3>
                <button type="button" class="btn btn-light">닫기</button>
            </div>

            <div class="modal-body">
                <form name="loginfrm" id="loginfrm" method="post">
                    <div class="form-group row text-danger">
                        <label class="col-form-label col-4 text-right" for="userid">아이디</label>
                        <input type="text" name="userid" id="userid" class="form-control col-5 border-danger">
                    </div>
                    <div class="form-group row text-danger">
                        <label class="col-form-label col-4 text-right" for="passwd">비밀번호</label>
                        <input type="password" name="passwd" id="passwd" class="form-control col-5 border-danger">
                    </div>
                    <div class="form-group row">
                        <div class="col-4"></div>
                        <div class="form-check">
                        <input type="checkbox" class="form-check-input border-warning">
                        <label class="form-check-label text-warning">로그인 상태 유지</label>
                        </div>
                    </div>
                </form>
            </div>

            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-danger">로그인</button>
                <button type="button" class="btn btn-warning">아이디/비밀번호 찾기</button>
            </div>
        </div>
    </div>
</div>

<!-- jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<script>
   $('#newbdbtn').click(function() { location.href='pds/write.tiles'; })
   $('#joinbtn').click(function() { location.href='join/agree.tiles'; })
</script>
