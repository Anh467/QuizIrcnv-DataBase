-- Chèn dữ liệu mẫu vào bảng CUSTOMER

INSERT INTO CUSTOMER (Account, Password, CustomerName, CustomerImg, Mail, DateOfBirth, Gender, RoleCustomer)
VALUES
    ('customer1', 'password1', N'Nguyễn Văn A', 'img1.jpg', 'customer1@example.com', '1990-01-01', 'Male', 'STUDENT'),
    ('customer2', 'password2', N'Trần Thị B', 'img2.png', 'customer2@example.com', '1985-05-15', 'Female', 'TEACHER'),
    ('customer3', 'password3', N'Lê Văn C', 'img3.jpg', 'customer3@example.com', '1998-12-30', 'Male', 'PARENT'),
    ('customer4', 'password4', N'Hồ Thị D', 'img4.avif', 'customer4@example.com', '1982-08-20', 'Female', 'STUDENT');

	-- Chèn dữ liệu giả với CustomerID là "CID00000001" vào bảng FolderCourse
INSERT INTO FolderCourse (CustomerID, FolderName, FolderImg, Description, privacry, createdAt, updatedAt)
VALUES
    ('CID00000001', N'Toán', 'image1.jpg', 
	N'Khóa học Toán là một nền tảng quan trọng trong hầu hết các lĩnh vực khoa học và kỹ thuật. Nó bao gồm nhiều phạm vi, từ toán cơ bản đến toán cao cấp, và đóng vai trò quan trọng trong việc giải quyết các vấn đề phức tạp trong thế giới thực.', 
	'public', GETDATE(), GETDATE()),
    ('CID00000001', N'Trí tuệ nhân tạo', 'image2.jpg', 
	N'Khóa học Trí Tuệ Nhân Tạo (Artificial Intelligence - AI) khám phá cách máy tính có thể học và thực hiện các nhiệm vụ thông minh giống con người. Nó bao gồm các chủ đề như học máy, xử lý ngôn ngữ tự nhiên và thị giác máy tính.', 
	'private', GETDATE(), GETDATE()),
    ('CID00000001', N'Xác xuất thống kê', 'image3.jpg', 
	N'Khóa học Xác Suất và Thống Kê tập trung vào việc thu thập, phân tích và hiểu dữ liệu. Nó giúp bạn hiểu cách xác định khả năng và biểu đồ dữ liệu để đưa ra các quyết định dựa trên thông tin số liệu.'
	, 'public', GETDATE(), GETDATE()),
	('CID00000001', N'Cấu trúc dữ liệu và giải thuật', 'image4.jpg', 
	N'Khóa học này tập trung vào việc thiết kế và phân tích các cấu trúc dữ liệu và giải thuật hiệu quả. Nó là yếu tố quan trọng trong phát triển phần mềm và giúp tối ưu hóa hiệu suất của các ứng dụng.', 
	'public', GETDATE(), GETDATE()),
    ('CID00000001', N'Hướng đối tượng', 'image5.jpg', 
	N'Khóa học Hướng Đối Tượng (Object-Oriented Programming - OOP) dạy cách thiết kế và phát triển phần mềm bằng cách tạo ra các đối tượng và tương tác giữa chúng. OOP giúp cấu trúc code dễ quản lý và tái sử dụng.', 
	'private', GETDATE(), GETDATE());
-- Dữ liệu giả cho FolderID 1 (Chủ đề về toán)
INSERT INTO Course (FolderID, CourseName, CourseImg, Description, privacry, createdAt, updatedAt)
VALUES
    (1, N'Toán Cơ Bản', 'math_basic.jpg', N'Khóa học về các khái niệm cơ bản trong toán học', 'public', GETDATE(), GETDATE()),
    (1, N'Toán Đại Số', 'algebra.jpg', N'Khóa học về đại số và phương pháp giải bài toán đại số', 'public', GETDATE(), GETDATE()),
    (1, N'Toán Hình Học', 'geometry.jpg', N'Khóa học về hình học và các tính chất hình học', 'public', GETDATE(), GETDATE()),
    (1, N'Toán Ứng Dụng', 'math_applications.jpg', N'Khóa học về ứng dụng của toán trong thực tế', 'public', GETDATE(), GETDATE());

-- Dữ liệu giả cho FolderID 2 (Trí Tuệ Nhân Tạo)
INSERT INTO Course (FolderID, CourseName, CourseImg, Description, privacry, createdAt, updatedAt)
VALUES
    (2, N'Học Máy', 'machine_learning.jpg', N'Khóa học về học máy và các thuật toán học máy', 'public', GETDATE(), GETDATE()),
    (2, N'Xử Lý Ngôn Ngữ Tự Nhiên', 'nlp.jpg', N'Khóa học về xử lý ngôn ngữ tự nhiên trong AI', 'public', GETDATE(), GETDATE()),
    (2, N'Thị Giác Máy Tính', 'computer_vision.jpg', N'Khóa học về thị giác máy tính và nhận dạng hình ảnh', 'public', GETDATE(), GETDATE()),
    (2, N'Trí Tuệ Nhân Tạo Ứng Dụng', 'ai_applications.jpg', N'Khóa học về ứng dụng của trí tuệ nhân tạo', 'public', GETDATE(), GETDATE());

-- Dữ liệu giả cho FolderID 3 (Xác xuất thống kê)
INSERT INTO Course (FolderID, CourseName, CourseImg, Description, privacry, createdAt, updatedAt)
VALUES
    (3, N'Xác Suất Cơ Bản', 'probability_basic.jpg', N'Khóa học về các khái niệm cơ bản trong xác suất', 'public', GETDATE(), GETDATE()),
    (3, N'Thống Kê Mô Tả', 'descriptive_statistics.jpg', N'Khóa học về thống kê mô tả và phân tích dữ liệu', 'public', GETDATE(), GETDATE()),
    (3, N'Xác Suất và Thống Kê Ứng Dụng', 'probability_statistics_applications.jpg', N'Khóa học về ứng dụng xác suất và thống kê', 'public', GETDATE(), GETDATE()),
    (3, N'Phân Tích Thống Kê Số Liệu', 'data_statistics.jpg', N'Khóa học về phân tích thống kê số liệu', 'public', GETDATE(), GETDATE());

-- Dữ liệu giả cho FolderID 4 (Cấu trúc dữ liệu và giải thuật)
INSERT INTO Course (FolderID, CourseName, CourseImg, Description, privacry, createdAt, updatedAt)
VALUES
    (4, N'Cấu Trúc Dữ Liệu Cơ Bản', 'data_structures_basic.jpg', N'Khóa học về các cấu trúc dữ liệu cơ bản', 'public', GETDATE(), GETDATE()),
    (4, N'Giải Thuật Sắp Xếp', 'sorting_algorithms.jpg', N'Khóa học về các giải thuật sắp xếp dữ liệu', 'public', GETDATE(), GETDATE()),
    (4, N'Cấu Trúc Dữ Liệu Đối Tượng', 'object_data_structures.jpg', N'Khóa học về cấu trúc dữ liệu đối tượng', 'public', GETDATE(), GETDATE()),
    (4, N'Tối Ưu Hóa Giải Thuật', 'algorithm_optimization.jpg', N'Khóa học về tối ưu hóa giải thuật', 'public', GETDATE(), GETDATE());

-- Dữ liệu giả cho FolderID 5 (Hướng đối tượng)
INSERT INTO Course (FolderID, CourseName, CourseImg, Description, privacry, createdAt, updatedAt)
VALUES
    (5, N'Lập Trình Hướng Đối Tượng', 'oop_programming.jpg', N'Khóa học về lập trình hướng đối tượng', 'public', GETDATE(), GETDATE()),
    (5, N'Tích Hợp Hướng Đối Tượng', 'oop_integration.jpg', N'Khóa học về tích hợp hướng đối tượng', 'public', GETDATE(), GETDATE()),
    (5, N'Thiết Kế Hướng Đối Tượng', 'oop_design.jpg', N'Khóa học về thiết kế hướng đối tượng', 'public', GETDATE(), GETDATE()),
    (5, N'Phát Triển Ứng Dụng Hướng Đối Tượng', 'oop_application.jpg', N'Khóa học về phát triển ứng dụng hướng đối tượng', 'public', GETDATE(), GETDATE());

-- Chèn dữ liệu giả vào bảng FolderCourse
INSERT INTO FolderCourse (CustomerID, FolderName, FolderImg, Description, privacry, createdAt, updatedAt)
VALUES
  ('CID00000005', N'Khóa học Toán cơ bản', 'toan.jpg', N'Khóa học "Toán cơ bản" là một khóa học dành cho những người mới học toán. Trong khóa học này, bạn sẽ được giới thiệu vào các khái niệm toán học cơ bản như phép cộng, phép trừ, nhân, chia và các khái niệm hình học. Khóa học này sẽ giúp bạn xây dựng một nền tảng toán học vững chắc để tiến xa hơn trong việc nghiên cứu và học hỏi về toán.', 'public', GETDATE(), GETDATE()),
  ('CID00000005', N'Lập trình Python', 'python.jpg', N'Khóa học "Lập trình Python" là một khóa học về lập trình sử dụng ngôn ngữ Python. Python là một ngôn ngữ lập trình phổ biến và dễ học, nên khóa học này thích hợp cho cả người mới học lập trình và những người có kinh nghiệm. Bạn sẽ học về cú pháp Python, cách viết chương trình, và cách giải quyết các vấn đề thông qua lập trình.', 'public', GETDATE(), GETDATE()),
  ('CID00000005', N'Khoa học dữ liệu', 'data_science.jpg', N'Khóa học "Khoa học dữ liệu" là một chương trình học về xử lý dữ liệu và phân tích dữ liệu. Bạn sẽ học cách thu thập dữ liệu, làm sạch dữ liệu, áp dụng các thuật toán phân tích dữ liệu, và trình bày kết quả. Khóa học này cung cấp kiến thức và kỹ năng quan trọng trong lĩnh vực khoa học dữ liệu và machine learning.', 'public', GETDATE(), GETDATE()),
  ('CID00000005', N'Học thiết kế đồ họa', 'graphic_design.jpg', N'Khóa học "Học thiết kế đồ họa" là một chương trình học về thiết kế đồ họa và đồ họa máy tính. Bạn sẽ học cách sử dụng các công cụ thiết kế đồ họa như Photoshop và Illustrator để tạo ra các tác phẩm nghệ thuật, biểu đồ, và hình ảnh chuyên nghiệp. Khóa học này là lựa chọn tốt cho những người quan tâm đến thiết kế đồ họa.', 'public', GETDATE(), GETDATE()),
  ('CID00000005', N'Lập trình di động', 'mobile_dev.jpg', N'Khóa học "Lập trình di động" là một khóa học về phát triển ứng dụng di động cho các nền tảng như Android và iOS. Bạn sẽ học cách xây dựng ứng dụng di động từ cơ bản đến nâng cao, sử dụng các ngôn ngữ lập trình như Java (cho Android) và Swift (cho iOS). Khóa học này giúp bạn trở thành một nhà phát triển ứng dụng di động có kỹ năng.', 'public', GETDATE(), GETDATE());


-- Chèn dữ liệu giả cho các môn học liên quan cho bảng Course
INSERT INTO Course (FolderID, CourseName, CourseImg, Description, privacry, createdAt, updatedAt)
VALUES
  -- Môn học liên quan cho FolderID = 1
  (6, N'Toán cơ bản', 'toan_basic.jpg', N'Học các khái niệm cơ bản về toán học.', 'public', GETDATE(), GETDATE()),
  (6, N'Toán cao cấp', 'toan_advanced.jpg', N'Học các chủ đề toán cao cấp như tích phân và vi phân.', 'public', GETDATE(), GETDATE()),
  (6, N'Hình học', 'geometry.jpg', N'Khám phá hình học và các tính chất hình học.', 'public', GETDATE(), GETDATE()),

  -- Môn học liên quan cho FolderID = 2
  (7, N'Máy học', 'machine_learning.jpg', N'Nắm vững kiến thức về trí tuệ nhân tạo và máy học.', 'public', GETDATE(), GETDATE()),
  (7, N'Xử lý ngôn ngữ tự nhiên', 'nlp.jpg', N'Học về xử lý ngôn ngữ tự nhiên và ứng dụng trong AI.', 'public', GETDATE(), GETDATE()),
  (7, N'Thị giác máy tính', 'computer_vision.jpg', N'Khám phá thị giác máy tính và nhận dạng hình ảnh.', 'public', GETDATE(), GETDATE()),

  -- Môn học liên quan cho FolderID = 3
  (8, N'Xác suất cơ bản', 'probability_basic.jpg', N'Học về xác suất cơ bản và phân phối xác suất.', 'public', GETDATE(), GETDATE()),
  (8, N'Thống kê ứng dụng', 'applied_statistics.jpg', N'Áp dụng thống kê vào các vấn đề thực tế.', 'public', GETDATE(), GETDATE()),
  (8, N'Phân tích dữ liệu', 'data_analysis.jpg', N'Phân tích dữ liệu và đưa ra dự đoán.', 'public', GETDATE(), GETDATE()),
  -- Môn học liên quan cho FolderID = 4
  (9, N'Thiết kế đồ họa', 'graphic_design.jpg', N'Học thiết kế đồ họa và đồ họa máy tính.', 'public', GETDATE(), GETDATE()),
  (9, N'Photoshop cơ bản', 'photoshop_basic.jpg', N'Nắm vững cách sử dụng Photoshop để thiết kế.', 'public', GETDATE(), GETDATE()),
  (9, N'Illustrator nâng cao', 'illustrator_advanced.jpg', N'Học các kỹ thuật nâng cao trong Illustrator.', 'public', GETDATE(), GETDATE()),

  -- Môn học liên quan cho FolderID = 5
  (10, N'Lập trình di động', 'mobile_dev.jpg', N'Học lập trình ứng dụng di động cho Android và iOS.', 'public', GETDATE(), GETDATE()),
  (10, N'Xây dựng ứng dụng Android', 'android_app.jpg', N'Phát triển ứng dụng Android từ cơ bản đến chuyên sâu.', 'public', GETDATE(), GETDATE()),
  (10, N'Lập trình iOS', 'ios_app.jpg', N'Học lập trình ứng dụng iOS bằng Swift và Objective-C.', 'public', GETDATE(), GETDATE());


   SELECT [FolderID], [CustomerID], [FolderName], [FolderImg], [Description], [privacry], [createdAt], [updatedAt] 
   FROM [FolderCourse] AS [FolderCourse] WHERE [FolderCourse].[FolderName] = N'eqw' AND [FolderCourse].[CustomerID] = N'CID00000005' 
   ORDER BY [FolderCourse].[FolderID] OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY