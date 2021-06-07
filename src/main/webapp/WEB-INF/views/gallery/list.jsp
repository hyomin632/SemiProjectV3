<%@ page pageEncoding="UTF-8"%>

<style>
    .pushright { float: right; }
    .cdwide { width: 238px; }
    .imgsize { width: 220px; height: 220px; margin-left: 8px; cursor: pointer; }
    .moveright { margin-left: 55px; }
    .pushdown { margin-bottom: 10px; }
</style>

<div id="main">
	<div>
	    <i class="fas fa-file-image fa-2x"> 갤러리</i>
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
        <div class="col-12">
            <ul class="list-inline moveright">
                <li class="list-inline-item pushdown">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top" onclick="showimg('')">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </li>
                <li class="list-inline-item">
                    <div class="card cdwide">
                        <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                            <p class="card-text">희희
                            <span class="pushright">2021-05-21</span></p>
                            <p class="card-text">
                                <i class="far fa-eye"></i> 12345
                                <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                            </p>
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                    </li>
                    <li class="list-inline-item">
                        <div class="card cdwide">
                            <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                                <p class="card-text">희희
                                <span class="pushright">2021-05-21</span></p>
                                <p class="card-text">
                                    <i class="far fa-eye"></i> 12345
                                    <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                                </p>
                            </div> <!-- card-body -->
                        </div> <!-- card -->
                    </li>
                    <li class="list-inline-item">
                        <div class="card cdwide">
                            <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                                <p class="card-text">희희
                                <span class="pushright">2021-05-21</span></p>
                                <p class="card-text">
                                    <i class="far fa-eye"></i> 12345
                                    <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                                </p>
                            </div> <!-- card-body -->
                        </div> <!-- card -->
                    </li>
                    <li class="list-inline-item">
                        <div class="card cdwide">
                            <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                                <p class="card-text">희희
                                <span class="pushright">2021-05-21</span></p>
                                <p class="card-text">
                                    <i class="far fa-eye"></i> 12345
                                    <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                                </p>
                            </div> <!-- card-body -->
                        </div> <!-- card -->
                    </li>
                    <li class="list-inline-item">
                        <div class="card cdwide">
                            <img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="imgsize card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">우리 도도 이쁘죠?!</h5>
                                <p class="card-text">희희
                                <span class="pushright">2021-05-21</span></p>
                                <p class="card-text">
                                    <i class="far fa-eye"></i> 12345
                                    <span class="pushright"><i class="far fa-thumbs-up"></i> 987</span>
                                </p>
                            </div> <!-- card-body -->
                        </div> <!-- card -->
                    </li>
                </ul>
            </div>
        </div> <!-- 이미지 리스트 -->

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
    function showimg(gno) {
        location.href='gallery/view.tiles';
    }
</script>