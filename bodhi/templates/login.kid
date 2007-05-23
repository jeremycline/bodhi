<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
    xmlns:py="http://purl.org/kid/ns#"
    py:extends="'master.kid'">

<head>
    <meta content="text/html; charset=UTF-8"
        http-equiv="content-type" py:replace="''"/>
    <title>Login</title>
</head>

<body onload="document.login.user_name.focus()">
    <table width="100%">
        <tr>
            <td>
                <h1 class="padded">Bodhi</h1>
            </td>
        </tr>
        <tr>
            <td>
                <blockquote>
                <p class="padded">Welcome to <a href="https://hosted.fedoraproject.org/projects/bodhi">bodhi</a>.  You may log into this test instance with the username and password <b>guest</b></p>
                    <p class="padded">${message}</p>
                </blockquote>
            </td>
        </tr>
    </table>
    <form action="${previous_url}" method="POST" name="login">
        <table class="login">
            <tr>
                <td class="login-title">
                    Login:
                </td>
                <td class="login-value">
                    <input type="text" size="25" name="user_name" />
                </td>
            </tr>
            <tr>
                <td class="login-title">
                    Password:
                </td>
                <td class="login-value">
                    <input type="password" size="25" name="password" />
                </td>
            </tr>
            <tr>
                <td class="login-title"></td>
                <td class="login-value">
                    <input class="button" name="login" type="submit" value="Login" />
                </td>
            </tr>
        </table>

        <input py:if="forward_url" type="hidden" name="forward_url"
            value="${forward_url}"/>

        <input py:for="name,value in original_parameters.items()"
            type="hidden" name="${name}" value="${value}"/>
    </form>
</body>
</html>
