// Product Variants Selection Handler
document.addEventListener('DOMContentLoaded', function() {
    const colorSelect = document.getElementById('colorSelect');
    const sizeSelect = document.getElementById('sizeSelect');
    const mainPrice = document.getElementById('mainPrice');
    const stockInfo = document.getElementById('stockInfo');
    const addToCartBtn = document.getElementById('addToCart');

    // Get variants data from window object (passed from Thymeleaf)
    const variants = window.productVariants || [];

    // Get unique colors
    function getUniqueColors() {
        const colors = new Map();
        variants.forEach(v => {
            if (!colors.has(v.idmau)) {
                colors.set(v.idmau, v.mausac);
            }
        });
        return colors;
    }

    // Get sizes for selected color
    function getSizesForColor(idmau) {
        return variants.filter(v => v.idmau == idmau);
    }

    // Update size dropdown based on color selection
    if (colorSelect) {
        colorSelect.addEventListener('change', function() {
            const selectedColor = this.value;
            sizeSelect.innerHTML = '<option value="">-- Chọn size --</option>';
            
            if (selectedColor) {
                const sizes = getSizesForColor(selectedColor);
                sizes.forEach(v => {
                    const opt = document.createElement('option');
                    opt.value = v.idsize;
                    opt.textContent = v.size;
                    opt.setAttribute('data-price', v.price);
                    opt.setAttribute('data-stock', v.stock);
                    sizeSelect.appendChild(opt);
                });
                
                // Auto-select first size if only one available
                if (sizes.length === 1) {
                    sizeSelect.selectedIndex = 1;
                    sizeSelect.dispatchEvent(new Event('change'));
                }
            }
            
            // Reset info
            stockInfo.textContent = '-';
            stockInfo.className = 'badge badge-info stock-badge';
        });
    }

    // Update price and stock when size is selected
    if (sizeSelect) {
        sizeSelect.addEventListener('change', function() {
            const selectedOption = this.options[this.selectedIndex];
            
            if (this.value && selectedOption.hasAttribute('data-price')) {
                const price = parseFloat(selectedOption.getAttribute('data-price'));
                const stock = parseInt(selectedOption.getAttribute('data-stock'));
                
                // Update price
                mainPrice.textContent = new Intl.NumberFormat('vi-VN').format(price) + '₫';
                
                // Update stock
                stockInfo.textContent = stock + ' sản phẩm';
                if (stock > 0) {
                    stockInfo.className = 'badge badge-success stock-badge';
                } else {
                    stockInfo.className = 'badge badge-danger stock-badge';
                }
                
                // Enable/disable add to cart button
                addToCartBtn.disabled = stock <= 0;
            } else {
                stockInfo.textContent = '-';
                stockInfo.className = 'badge badge-info stock-badge';
            }
        });
    }

    // Add to cart handler (placeholder)
    if (addToCartBtn) {
        addToCartBtn.addEventListener('click', function() {
            const selectedColor = colorSelect ? colorSelect.value : null;
            const selectedSize = sizeSelect ? sizeSelect.value : null;
            
            if (!selectedColor || !selectedSize) {
                alert('Vui lòng chọn màu và size!');
                return;
            }
            
            // TODO: Implement add to cart functionality
            alert('Chức năng thêm vào giỏ hàng sẽ được phát triển!');
        });
    }

    // Populate unique colors in color dropdown
    if (colorSelect && variants.length > 0) {
        const uniqueColors = getUniqueColors();
        colorSelect.innerHTML = '<option value="">-- Chọn màu --</option>';
        uniqueColors.forEach((mausac, idmau) => {
            const opt = document.createElement('option');
            opt.value = idmau;
            opt.textContent = mausac;
            colorSelect.appendChild(opt);
        });
    }
});
