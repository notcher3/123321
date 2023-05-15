<%@ page contentType = "text/html" %> // 设置页面的内容类型为text/html
<%@ page pageEncoding = "utf-8" %> // 设置页面的编码为utf-8
<html>
<head>
		<style>
			#textStyle{ // 定义一个样式，用于设置字体，大小和颜色
				font-family:宋体;font-size:26;color:blue
			}
		</style>
	<body bgcolor = "#ffccff"> // 设置背景颜色为粉色
		<form action="giveTest.jsp" id = "textStyle" method = "post"> // 创建一个表单，提交到giveTest.jsp页面，使用post方法
			<input type = radio name = "grade" value = "5"/>初级 // 创建一个单选按钮，名字为grade，值为5，显示为初级
			<input type = radio name = "grade" value = "7" checked = "checked"/>中级 // 创建一个单选按钮，名字为grade，值为7，显示为中级，并默认选中
			<input type = radio name = "grade" value = "10"/>高级 // 创建一个单选按钮，名字为grade，值为10，显示为高级
			<br><input type = "submit" id = "textStyle" value = "提交"> // 创建一个换行符和一个提交按钮，使用textStyle样式，显示为提交
			<input type = "reset" id = "textStyle" value = "重置"> // 创建一个重置按钮，使用textStyle样式，显示为重置
		</form>
	</body>
</html>
