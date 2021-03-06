
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Link : </title>
	<link rel="shortcut icon" type="image/x-icon" href="../../../resources/images/shortcut-icon.PNG">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	 <link rel="stylesheet" href="/link/resources/css/accountBook/expensive.css">
	<link rel="stylesheet" href="/link/resources/css/blog/blog.css">
	<script type="text/javascript" src="/link/resources/js/accountbook_se2/js/HuskyEZCreator.js"></script>
	<style>
        div {
           margin-top: 2px;
        }
        .ACbook{
              width:66px;
              height:20px;
              font-size:12px;
        }
        #line{
        
        }
        li{
            list-style: none;
        }
        .point{
            color: #111;
            font-weight: bold;
        }
        .btn-button{float: right;padding: 1px 7px; font-size: 13px;}
        .tb{padding: 50px;}
    </style>
</head>
<body><%@include file="../../common/nav.jsp"%>

    <div class="container-fluid">
        <div class="row">
			<div class="left-navi" style="background-color: lightgray; ">
                 <%@ include file="../modal.jsp" %>
                <div>
					<ul>
						<li><a href="/link/accountbook/expense.do"><h4>가계부</h4></a></li>
						<li><a href="/link/accountbook/monthly.do"
							style="color: dimgray"><h4>지출 보고서</h4></a></li>
						<li><a href="/link/accountbook/budget.do"
							style="color: dimgray"><h4>예산쓰기</h4></a></li>
						<li><a href="/link/accountbook/mylist.do"
							class="point" style="color: dimgray"><h4>월결산</h4></a></li>
						
						<!-- <li class="month-accountBook">▼이달의 가계
							<ul>
								<li>+수입</li>
								<li>-지출</li>
							</ul>
						</li>
						
						<li>▼총 누적 자산</li>

						<li>자산합계</li>
						
						<li>▼최근 태그</li>

						<li>미정국수</li> -->

					</ul>
				</div> 
            </div>
            <div class="col-sm-10">
                <div class="row">
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6 text-right">
                            <div class="form-group">
                                <input type="text" class="form-control">
                                <button class="btn btn-success">검색</button>
                            </div>
                    </div>
                </div>
           
              
                <div class="row">
                    <div class="col-sm-12">
                          <div class="row">
                              <div class="col-sm-12" style="padding-left: 25px; border-bottom: 2px grey solid;">
                                   <h3>월결산 쓰기</h3>
                              </div>
                        </div>
                    </div>
                </div>
               
               <form id="addwriting" action="addWriting.do" method="post">
                <div class="row" style="padding-top: 50px;">
                    <div class="col-sm-12">
                    	<input class="form-control" name="title"  value="" type="text">
                        <textarea rows="10" class="form-control" name="contents" id="textareaID"></textarea>
                    </div>
	            </div>
	            <div class="row" style="padding-top: 50px; padding-bottom: 30px; border-bottom: 1px grey solid">
	                <div class="col-sm-12">
	                    <div class="col-sm-1">
	                        설정정보
	                    </div>
	                    <div class="col-sm-2" style="outline: 1px grey solid;">
	                       <div class="row">
	                        <strong>글공개 </strong>
	                        <input type="radio" name="publicYN" value="Y"> 공개  
	                        <input type="radio" name="publicYN" value="N"> 비공개 
	                       </div>
	                 
	                    </div>
	                </div>
	            </div>
            <div class="row">
               <div class="col-sm-12">
                    <button id="btn-save" type="button"  class="btn btn-primary"> 저장 </button>
               </div>
            </div>
   		</form>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    
	    var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
	   		elPlaceHolder: "textareaID",
	   		sSkinURI: "/link/resources/js/accountbook_se2/SmartEditor2Skin.html",
	    		fCreator: "createSEditor2"
		});

		$('#btn-save').click(function(event){
		 	  oEditors.getById["textareaID"].exec("UPDATE_CONTENTS_FIELD",  []);
	          $("#addwriting").submit();
		 })
    
    </script>
</body>
</html>