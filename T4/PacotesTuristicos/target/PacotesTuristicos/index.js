import React from "react";
import ReactDOM from "react-dom";

ReactDOM.render(
    <React.StrictMode>
        <MostraLinks papel="${sessionScope.usuarioLogado.papel}"/>
    </React.StrictMode>,
    document.getElementById("links")
);