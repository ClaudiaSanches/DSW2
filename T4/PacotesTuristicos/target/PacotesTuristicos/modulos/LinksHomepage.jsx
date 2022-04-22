class LinksHomepage extends React.Component {

    render(){
        const homepage = "Página inicial";
        const login = "Entrar";
        const logout = "Sair";
        const agencia = "Área da agência";
        const cliente = "Área do cliente";
        const admin = "Área administrativa";

        switch (this.props.papel) {
            case "AGENCIA":
                return (
                    <div>
                        <a href="/PacotesTuristicos/index.jsp">{homepage}</a>
                        <br></br>
					    <a href="/PacotesTuristicos/agencia">{agencia}</a>
                        <br></br>
					    <a href="/PacotesTuristicos/logout/logout">{logout}</a>
                    </div>
                );
            case "CLIENTE":
                return (
                    <div>
                        <a href="/PacotesTuristicos/index.jsp">{homepage}</a>
                        <br></br>
					    <a href="/PacotesTuristicos/cliente">{cliente}</a>
                        <br></br>
					    <a href="/PacotesTuristicos/logout/logout">{logout}</a>
                    </div>
                );
            case "ADMIN":
                return (
                    <div>
                        <a href="/PacotesTuristicos/index.jsp">{homepage}</a>
                        <br></br>
					    <a href="/PacotesTuristicos/admin">{admin}</a>
                        <br></br>
					    <a href="/PacotesTuristicos/logout/logout">{logout}</a>
                    </div>
                );
            default:
                return (
                    <div>
                        <a className="link" href="/PacotesTuristicos/index.jsp">{homepage}</a>
                        <br></br>
                        <a className="link" href="/PacotesTuristicos/login.jsp">{login}</a>
                    </div>
                );
        }

        // return (
        //     <div>
        //         <a className="link" href="/PacotesTuristicos/index.jsp">{homepage}</a>
        //         <br></br>
        //         <a className="link" href="/PacotesTuristicos/login.jsp">{login}</a>
        //         <br></br>
        //         <Mod3/>
        //         <Mod4/>
        //     </div>
        // );
    }
}
