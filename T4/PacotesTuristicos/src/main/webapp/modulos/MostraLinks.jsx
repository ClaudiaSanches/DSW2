class MostraLinks extends React.Component {

    render(){
        switch (this.props.papel) {
            case "AGENCIA":
                return (
                    <div>
                        <Index/>
                        <QuebraLinha/>
					    <AreaAgencia/>
                        <QuebraLinha/>
					    <Logout/>
                    </div>
                );
            case "CLIENTE":
                return (
                    <div>
                        <Index/>
                        <QuebraLinha/>
					    <AreaCliente/>
                        <QuebraLinha/>
					    <Logout/>
                    </div>
                );
            case "ADMIN":
                return (
                    <div>
                        <Index/>
                        <QuebraLinha/>
					    <AreaAdmin/>
                        <QuebraLinha/>
					    <Logout/>
                    </div>
                );
            default:
                return (
                    <div>
                        <Index/>
                        <QuebraLinha/>
                        <Login/>
                    </div>
                );
        };
    }
}
