# 1. Các thực thể và thuộc tính

## Khoá học

- Mã khóa học
- Tên khóa học
- Mô tả
- Học phí

## Giảng viên

- Mã giảng viên
- Họ tên
- Chuyên ngành
- Số điện thoại

## Học viên

- Mã học viên
- Họ tên
- Email
- Ngày đăng ký

## Lớp học

- Mã lớp
- Thời gian học 
- Mã giáo viên
- Mã khóa học

## Đăng ký

- Mã học viên
- Mã lớp
- Ngày đăng ký
- Trạng thái

# 2. Mối quan hệ giữa các thực thể

## Khóa học - Lớp học (1:N)

- Một khóa học có thể mở nhiều lớp
- Một lớp chỉ nên thuộc về một khóa học

## Giảng viên - Lớp học (1:N)

- Một giảng viên có thể phụ trách nhiều lớp
- Mỗi lớp chỉ có một giảng viên

## Học viên - Lớp học (N:N)

- Một học viên đăng ký nhiều lớp học
- Một lớp học có nhiều học viên đăng ký