function Index() {
    const homepage = "Página inicial";

    return (
        <a className="link" href="/PacotesTuristicos/index.jsp">{homepage}</a>
    );
}

function Login() {
    const login = "Entrar";

    return (
        <a className="link" href="/PacotesTuristicos/login.jsp">{login}</a>
    );
}

function Logout() {
    const logout = "Sair";

    return (
        <a className="link" href="/PacotesTuristicos/logout/logout">{logout}</a>
    );
}

function AreaAgencia() {
    const agencia = "Área da agência";

    return (
        <a className="link" href="/PacotesTuristicos/agencia">{agencia}</a>
    );
}

function AreaCliente() {
    const cliente = "Área do cliente";

    return (
        <a className="link" href="/PacotesTuristicos/cliente">{cliente}</a>
    );
}

function AreaAdmin() {
    const admin = "Área administrativa";

    return (
        <a className="link" href="/PacotesTuristicos/admin">{admin}</a>
    );
}

function QuebraLinha() {
    return (
        <br></br>
    );
}
