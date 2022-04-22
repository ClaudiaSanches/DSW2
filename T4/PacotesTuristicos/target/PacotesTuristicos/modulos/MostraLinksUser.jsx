class MostraLinksUser extends React.Component {

    render() {
        switch (this.props.usuario) {
            case "admin":
                return (
                    <Admin/>
                );
            case "cliente":
                return (
                    <Cliente/>
                );
            case "agencia":
                return (
                    <Agencia/>
                );
            default:
                return (
                    <h1>ué....</h1>
                );
        };
    }
}