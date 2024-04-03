import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
    static targets = ["input", "fileName"];
  
    connect() {
      this.inputTarget.addEventListener("change", this.updateFileName.bind(this));
    }
  
    updateFileName() {      
      if (this.inputTarget.files.length > 0) {
        this.fileNameTarget.textContent = this.inputTarget.files[0].name;
      }
    }
}