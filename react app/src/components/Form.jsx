import React, { useState } from "react";
import FileUploader from "./FileUploader";

const Form = () => {
  const labelStyle = {
    fontSize: "16px",
    fontWeight: 600,
    marginBottom: "8px",
    display: "block",
  };
  const inputStyle = {
    display: "block",
    fontSize: "16px",
    fontWeight: "500",
    width: "100%",
    padding: "10px",
  };

  const [formData, setFormData] = useState({
    name: "",
    capacity: "",
    amenities: [],
    safetyFeatures: [],
    meals: [],
    photo: null,
  });

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevData) => ({ ...prevData, [name]: value }));
  };

  const handleCheckboxChange = (e) => {
    const { name, checked } = e.target;
    setFormData((prevData) => {
      if (checked) {
        return { ...prevData, [name]: [...prevData[name], e.target.value] };
      } else {
        return {
          ...prevData,
          [name]: prevData[name].filter((item) => item !== e.target.value),
        };
      }
    });
  };

  const handleFileChange = (files) => {
    setFormData((prevData) => ({ ...prevData, photo: files }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log(formData);
  };

  return (
    <form onSubmit={handleSubmit} style={{ padding: "20px" }}>
      <h2 style={{ marginTop: "-15px" }}>Add Boat</h2>
      <div style={{ marginBottom: "20px" }}>
        <label style={labelStyle}>Name</label>
        <input
          type="text"
          name="name"
          value={formData.name}
          onChange={handleInputChange}
          placeholder="Enter the name of the boat"
          style={{
            fontFamily: "montserrat",
            display: "block",
            fontSize: "16px",
            fontWeight: "500",
            width: "70%",
            padding: "10px",
            border: "1px solid #D1D0DD",
            borderRadius: "8px",
          }}
        />
      </div>

      <div style={{ marginBottom: "20px" }}>
        <label style={labelStyle}>Capacity</label>
        <input
          type="text"
          name="capacity"
          value={formData.capacity}
          onChange={handleInputChange}
          placeholder="Enter number of seats on the boat"
          style={{
            fontFamily: "montserrat",
            display: "block",
            fontSize: "16px",
            fontWeight: "500",
            width: "40%",
            padding: "10px",
            border: "1px solid #D1D0DD",
            borderRadius: "8px",
          }}
        />
      </div>

      <div style={{ marginBottom: "20px" }}>
        <label style={labelStyle}>Photo</label>
        <FileUploader onFileChange={handleFileChange} />
      </div>

      <div style={{ marginBottom: "20px" }}>
        <label style={labelStyle}>Amenities</label>
        <div>
          {[
            "Clean Restrooms",
            "Comfortable Sitting arrangements",
            "Onboarding Dining",
            "Wi-Fi Access",
            "Entertainment System",
            "Air Conditioning/Climate Control",
          ].map((amenity) => (
            <label key={amenity} style={inputStyle}>
              <input
                type="checkbox"
                name="amenities"
                value={amenity}
                onChange={handleCheckboxChange}
              />{" "}
              {amenity}
            </label>
          ))}
        </div>
      </div>

      <div style={{ marginBottom: "20px" }}>
        <label style={labelStyle}>Safety Features</label>
        <div>
          {[
            "Live food provided to all passengers",
            "Emergency Kit onboard",
            "Fire Extinguishers",
          ].map((feature) => (
            <label key={feature} style={inputStyle}>
              <input
                type="checkbox"
                name="safetyFeatures"
                value={feature}
                onChange={handleCheckboxChange}
              />{" "}
              {feature}
            </label>
          ))}
        </div>
      </div>

      <div style={{ marginBottom: "20px" }}>
        <label style={labelStyle}>Meals</label>
        <div>
          {["Veg/Non veg", "Pure Veg"].map((meal) => (
            <label key={meal} style={inputStyle}>
              <input
                type="checkbox"
                name="meals"
                value={meal}
                onChange={handleCheckboxChange}
              />{" "}
              {meal}
            </label>
          ))}
        </div>
      </div>

      <button
        type="submit"
        style={{
          backgroundColor: "#1E79E1",
          color: "#fff",
          borderRadius: "8px",
          padding: "10px 20px",
          fontSize: "16px",
          border: "none",
          cursor: "pointer",
        }}
      >
        Save
      </button>
    </form>
  );
};

export default Form;
