## Hệ thống gồm 4 thực thể chính:

- Khách hàng gồm các thuộc tính: họ tên, email, số điện thoại, địa chỉ
- Sản phẩm gồm các thuộc tính: mã sản phẩm, tên, giá, loại sản phẩm
- Đơn hàng gồm các thuộc tính: mã đơn, ngày tạo, tổng tiền
- Chi tiết đơn hàng gồm các thuộc tính: sản phẩm, số lượng, đơn giá

## Các mối quan hệ giữa các thực thể:

- Khách hàng - đơn hàng: Một khách hàng có thể tạo nhiều đơn hàng, còn một đơn hàng chỉ thuộc về một khách hàng
- Đơn hàng - Chi tiết đơn hàng: Một đơn hàng có nhiều chi tiết đơn hàng, còn một chi tiết đơn hàng chỉ thuộc một đơn hàng
- Sản phẩm - Chi tiết đơn hàng: Một sản phẩm có thể xuất hiện trong nhiều chi tiết đơn hàng, còn một chi tiết đơn hàng chỉ chứa một sản phẩm