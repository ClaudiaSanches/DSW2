function LoginForm() {
    return (
        <form method="post" action="log.jsp">
                <table>
                    <tr>
                        <th>Usuário:</th>
                        <td><input type="text" name="login"
                                   value="${param.login}"/></td>
                    </tr>
                    <tr>
                        <th>Senha:</th>
                        <td><input type="password" name="senha" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"> 
                            <input class="button" type="submit" name="bOK" value="Entrar"/>
                        </td>
                    </tr>
                </table>
        </form>
    );
}