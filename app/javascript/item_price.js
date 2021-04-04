function item_price (){
  const priceInput = document.getElementById("item-price");
  const addTax = document.getElementById("add-tax-price");
  const profit = document.getElementById("profit");
  priceInput.addEventListener('input', () => {
    const inputValue = priceInput.value;
    addTax.innerHTML = Math.floor(inputValue * 0.1);
    profit.innerHTML = inputValue - Math.floor(inputValue * 0.1);
  });
};

window.addEventListener('load', item_price);