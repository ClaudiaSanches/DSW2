// var Component = (props) => {
//     const laugh = 

//     return (
//         <h1>Hahahahahahahaha, </h1> 
//     )
// }

import Component from "./mod2";

// function f2() {
//     return (
//         <h1>hohohohoho</h1>
//     )
// }

class Laugh extends React.Component {

    // f2() {
    //     return (
    //         <h1>hohohohoho</h1>
    //     )
    // }

    // constructor(props) {
    //     super();
    //     this.f2 = this.f2.bind(this);
    // }

    render(){
        const laugh = "hihihihi";
        const cmp = Component.f2();
        return (
            <h1>haha, {cmp}</h1>
        );
    }
}