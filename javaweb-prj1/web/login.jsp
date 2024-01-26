<%--
  Created by IntelliJ IDEA.
  User: 86135
  Date: 2023/9/11
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>用户登录页面</title>
    <script>
        // 建立一个验证函数
        function validate() {
            // 利用document获取文本框内容
            var username = document.forms["loginform"]["username"].value;
            var password = document.forms["loginform"]["password"].value;
            // 进行验证，如果不符合条件就return false，即不会提交表单
            if (username === "" || password === "") {
                //如果不符合条件会有提示
                alert("用户名和密码不能为空");
                return false;
            }
            if (username.length>6 || password.length>6) {
                alert("用户名和密码不能超过6位");
                return false;
            }
        }
    </script>
</head>
<body>
<%--添加了onsubmit，点击登录按钮后会先用js的函数进行判断，判断完返回true之后才会递交表单，进行servlet的判断--%>
<form name="loginform" action="login" method="post" onsubmit="return validate()">
    <%--使用表格即table标签--%>
    <table>
        <%--tr标签表示每一行，td标签表示每一列--%>
        <tr>
            <td>请输入用户名：</td>
            <td><input name="username" type="text"></td>
        </tr>
        <tr>
            <td>请输入密码：</td>
            <td><input name="password" type="password"></td>
        </tr>
    </table>
        <%--增加select下拉框--%>
        <select name="type">
            <option value=1>管理员</option>
            <option value=2>普通用户</option>
        </select><br>
        <input type="submit" value="登录">
</form>
</body>
</html>
