<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">

	(function() {

		$.ajax({
			url : 'http://localhost/board/listAjax.do',
			dataType : 'json',
			type : 'GET',
			async : false,
			success : function(data) {
				var listBoard = ""
				var list = data.list
				console.log("data25554:" + list[2].bno);
				
				for (var i = 0; i < list.length; i++) {

					listBoard += "<div style='cursor: pointer;' class='popnotice' data-bno='"+list[i].bno+"' data-title='"+list[i].title+"'  data-content='"+list[i].content+"'  data-userid='"+list[i].userid+"'  data-regde='"+list[i].regde+"'  data-viewpoint='"+list[i].viewpoint+"' >"
							+ list[i].bno
							+ list[i].userid
							+ list[i].title
							+ list[i].content
							+ list[i].regde + "</div>"

				}

				$("#Qnalist").html(listBoard);
				
			}
		//$("#content").html(contet);

		});

	}());
</script>


<div id="Qnalist"></div>