function Header() {

    const id = "ID";
    const nome = "Nome";
    const agencia = "Agência";
    const destino = "Destino";
    const partida = "Partida";
    const duracao = "Duração";
    const valor = "Valor";

    return (
        <tr className="table-header">
			<th>{id}</th>
			<th>{nome}</th>
			<th>{agencia}</th>
			<th>{destino}</th>
			<th>{partida}</th>
			<th>{duracao}</th>
			<th>{valor}</th>
		</tr>
    );
}

function CorpoTabela(args) {

    return (
        <tr>
			<td>{args.idpacote}</td>
			<td>{args.nomepacote}</td>
			<td>--</td>
			<td>--</td>
			<td>--</td>
			<td>--</td>
			<td>--</td>
		</tr>
    )
}