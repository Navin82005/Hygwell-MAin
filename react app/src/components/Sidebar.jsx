import React, { useState } from "react";
import { Sidebar, MenuItem, Menu } from "react-pro-sidebar";
import Form from "./Form";

const SideBar = () => {
  const [selected, setSelected] = useState("Manage Boats");

  const menuItemStyles = {
    root: {
      fontSize: "18px",
      fontWeight: 600,
      color: "#2B2939",
    },
    button: ({ active }) => ({
      backgroundColor: active ? "#1E79E1" : "#ffffff",
      color: active ? "#ffffff" : "#2B2939",
      borderRadius: "8px",
      "&:hover": {
        backgroundColor: "#1E79E1",
        color: "#ffffff",
      },
    }),
  };

  return (
    <div
      style={{
        display: "flex",
        height: "100vh",
        padding: "10px",
      }}
    >
      <Sidebar collapsed={false} backgroundColor="#ffffff">
        <div
          style={{
            display: "flex",
            flexDirection: "column",
            alignItems: "flex-start",
            justifyContent: "flex-start",
            width: "200px",
            padding: "10px",
          }}
        >
          <Menu menuItemStyles={menuItemStyles}>
            {[
              "Dashboard",
              "Manage Boats",
              "Manage Meals",
              "Manage Pricing",
              "Manage Bookings",
            ].map((item, index) => (
              <MenuItem
                style={{ marginBottom: "1px" }}
                key={index}
                active={selected === item}
                onClick={() => setSelected(item)}
              >
                {item}
              </MenuItem>
            ))}
          </Menu>
        </div>
      </Sidebar>
      {/* Right Layouts */}
      <main style={{ flex: 1, backgroundColor: "#f8f9fa", padding: "20px" }}>
        {selected === "Dashboard" && <h1>Dashboard</h1>}
        {selected === "Manage Boats" && <Form />}
        {selected === "Manage Meals" && <h1>Manage Meals</h1>}
        {selected === "Manage Pricing" && <h1>Manage Pricing</h1>}
        {selected === "Manage Bookings" && <h1>Manage Bookings</h1>}
      </main>
    </div>
  );
};

export default SideBar;
