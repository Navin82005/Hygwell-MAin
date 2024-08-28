import { useRef } from "react";
import { FileInput, Label } from "flowbite-react";
import CloudIcon from "../assets/icons/CloudIcon";

const FileUploader = ({ onFileChange }) => {
  const fileInputRef = useRef(null);

  const handleFileChange = (event) => {
    const files = event.target.files;
    onFileChange(files);
  };

  return (
    <div
      style={{
        display: "flex",
        width: "50%",
        alignItems: "center",
        justifyContent: "center",
      }}
    >
      <Label
        htmlFor="dropzone-file"
        style={{
          display: "flex",
          height: "16rem",
          width: "100%",
          cursor: "pointer",
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "center",
          borderRadius: "0.375rem",
          border: "2px dashed",
          borderColor: "#d1d5db",
          backgroundColor: "#f9fafb",
          transition: "background-color 0.3s",
        }}
        onMouseEnter={(e) => {
          e.currentTarget.style.backgroundColor = "#f3f4f6";
        }}
        onMouseLeave={(e) => {
          e.currentTarget.style.backgroundColor = "#f9fafb";
        }}
        onClick={() => fileInputRef.current?.click()}
      >
        <div
          style={{
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
            justifyContent: "center",
            paddingBottom: "1.5rem",
            paddingTop: "1.25rem",
          }}
        >
          <CloudIcon />
          <p
            style={{
              marginBottom: "0.5rem",
              fontSize: "0.875rem",
              color: "#6b7280",
            }}
          >
            <span style={{ fontWeight: "600" }}>Click to upload</span> or drag
            and drop
          </p>
          <p style={{ fontSize: "0.75rem", color: "#6b7280" }}>
            SVG, PNG, JPG or GIF upto 1MB.
          </p>
        </div>
        <FileInput
          id="dropzone-file"
          ref={fileInputRef}
          style={{ display: "none" }}
          onChange={handleFileChange}
          multiple
        />
      </Label>
    </div>
  );
};

export default FileUploader;
