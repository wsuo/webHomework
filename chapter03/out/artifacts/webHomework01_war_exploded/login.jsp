<%@ page contentType="text/html; charset=UTF-8"
            pageEncoding="UTF-8"%>
<html>
<head><title>登录页面</title></head>
<style>
    @import url('https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap');

    :root {
        --space-root: 1rem;
        --space-xs: calc(var(--space-root) / 2);
        --space-s: calc(var(--space-root) / 1.5);
        --space-m: var(--space-root);
        --space-l: calc(var(--space-root) * 1.5);
        --space-xl: calc(var(--space-root) * 2);
        --color-primary: mediumslateblue;
        --color-secondary: black;
        --color-tertiary: hotpink;
        --base-border-radius: 0.25rem;
        --ease: cubic-bezier(0.075, 0.82, 0.165, 1);
        --duration: 350ms;
        --font-family: 'Roboto', sans-serif;
        --font-size: 1.25rem;
    }


    * {
        box-sizing: border-box;
    }

    body {
        display: grid;
        place-items: center;
        margin: 0;
        height: 100vh;
        padding: var(--space-m);
        font-size: var(--font-size);
        font-family: var(--font-family);
        line-height: 1.2;
        background-color: var(--color-tertiary);
    }

    a {
        color: var(--color-primary);
    }

    h2 {
        font-weight: 700;
        font-size: calc(var(--font-size) * 1.5);
    }

    .form {
        position: relative;
        width: 100%;
        max-width: 450px;
        margin: 0 auto;
        transform: skewY(-5deg) translateY(10%) scale(0.94);
        transition:
                box-shadow var(--duration) var(--ease),
                transform var(--duration) var(--ease);}

    input {
        flex: 1 1 0;
        width: 100%;
        outline: none;
        padding: var(--space-m);
        font-size: var(--font-size);
        font-family: var(--font-family);
        color: var(--color-secondary);
        border: 2px solid var(--color-primary);

    }

    .btn-group {
        display: flex;
        align-items: center;
        justify-content: space-between;}



    .btn {
        position: relative;
        overflow: hidden;
        display: flex;
        align-items: center;
        justify-content: space-between;
        outline: none;
        padding: var(--space-m) var(--space-l);
        cursor: pointer;
        border: 2px solid transparent;
        border-radius: var(--base-border-radius);
    }

    .btn--primary {
    @include label-styles;
        background-color: var(--color-primary);
        border-color: var(--color-primary);
        color: white;

    }

    .btn--text {
        font-size: calc(var(--font-size) / 1.5);
        padding: 0;
    }


</style>

<body>


<form action="login" method="post">
   <table>
   <tr><td>用户名：</td>
       <td><input type="text" name="username"/></td>
   </tr>
   <tr><td>密&nbsp;&nbsp;码：</td>
        <td><input type="password" name="password"/></td>
   </tr>
   <tr><td><input type="submit" value="登录"/></td>
       <td><input type="reset" value="取消"/></td>
   </tr>
   </table>
</form>
</body>
</html>
