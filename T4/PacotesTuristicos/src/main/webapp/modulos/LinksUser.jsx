function Admin() {
    const cadastroCliente = "Cadastrar cliente";
    const cadastroAgencia = "Cadastrar agência";
    const listaClientes = "Listar clientes";
    const listaAgencias = "Listar agências";

    return (
        <div>
            <a href="/PacotesTuristicos/admin/cadastroCliente">{cadastroCliente}</a>
            {QuebraLinha()}
            <a href="/PacotesTuristicos/admin/cadastroAgencia">{cadastroAgencia}</a>
            {QuebraLinha()}
            <a href="/PacotesTuristicos/admin/listaClientes">{listaClientes}</a>
            {QuebraLinha()}
            <a href="/PacotesTuristicos/admin/listaAgencias">{listaAgencias}</a>
            {QuebraLinha()}
            {Index()}
            {QuebraLinha()}
            {Logout()}  
        </div>
    );
}

function Cliente() {
    const pacotes = "Meus pacotes";

    return (
        <div>
            {Index()}
            {QuebraLinha()}
			<a href="/PacotesTuristicos/compras">{pacotes}</a>\
            {QuebraLinha()}
			{Logout()}
        </div>
    );
}

function Agencia() {
    const cadastrarPacotes = "Cadastrar pacotes turísticos";
    const listarPacotes = "Listar pacotes turísticos";

    return (
        <div>
            <a href="/PacotesTuristicos/agencia/cadastroPacote">{cadastrarPacotes}</a>
            {QuebraLinha()}
			<a href="/PacotesTuristicos/agencia/listaPacotesAgencia">{listarPacotes}</a>
            {QuebraLinha()}
			{Index()}
            {QuebraLinha()}
			{Logout()}
        </div>
    );
}