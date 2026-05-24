# 1. Hệ thống gồm 3 thực thể chính

- Sách  
- Độc giả  - Phiếu mượn sách  

---

# 2. Thuộc tính của từng thực thể

## Sách

Bao gồm:
- Tên sách
- Mã ISBN
- Tác giả
- Năm xuất bản
- Thể loại

---

## Độc giả

Bao gồm:
- Mã độc giả
- Họ tên
- Ngày sinh
- Địa chỉ
- Số điện thoại

---

## Phiếu mượn sách

Bao gồm:
- Mã phiếu
- Ngày mượn
- Ngày trả dự kiến
- Trạng thái

---

# 3. Xác định khóa chính, khóa ngoại

## Sách

- Mã ISBN là khóa chính.

---

## Độc giả

- Mã độc giả là khóa chính.

---

## Phiếu mượn sách

- Mã phiếu là khóa chính.  

- Mã độc giả là khóa ngoại tham chiếu đến thực thể Độc giả.  

- Mã ISBN là khóa ngoại tham chiếu đến thực thể Sách.