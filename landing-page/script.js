const paypalButton = document.querySelector("#paypalButton");
const paymentNote = document.querySelector("#paymentNote");

if (paypalButton && paypalButton.getAttribute("href") === "PAYPAL_LINK_HERE") {
  paypalButton.addEventListener("click", (event) => {
    event.preventDefault();
    paymentNote.textContent = "PayPal link is not set yet. Temporary fallback: DM me to pay via PayPal.";
    paymentNote.classList.add("warning");
  });
}

document.querySelectorAll("[data-copy-target]").forEach((button) => {
  button.addEventListener("click", async () => {
    const target = document.getElementById(button.dataset.copyTarget);
    if (!target) return;

    try {
      await navigator.clipboard.writeText(target.value);
      const original = button.textContent;
      button.textContent = "Copied";
      setTimeout(() => {
        button.textContent = original;
      }, 1300);
    } catch {
      target.select();
      document.execCommand("copy");
    }
  });
});
