import "./assets/fonts/fonts";
import Header from "./components/Header";
import SideBar from "./components/Sidebar";

function App() {
  return (
    <div className="App" style={{ fontFamily: "montserrat" }}>
      <Header />
      <SideBar />
    </div>
  );
}

export default App;
