# For Dev deployment

- Step 1:
    - Chuyển sang nhánh `deploy_ziichat_flutter_ui` sync code mới nhất về từ develop
- Step 2:
    - cd vào thư mục `widgetbook` và chạy lệnh `dart run build_runner build -d`,
      để build phiên bản mới nhất của widgetbook
- Step 3:
    - Chạy lệnh `flutter build web --web-renderer auto --release`
- Step 4:
    - Copy toàn bộ thư mục trong thư mục widgetbook/build/web
    vào nhánh ziichat_flutter_ui của repo `https://github.com/ziichatlabs/development.tools/tree/deploy-tool`
- Step 5:
    - Quay lại nhánh `deploy_ziichat_flutter_ui` và copy thư mục
    assets chính của project vào trong thư mục `assets/packages/ziichat_ui` của repo `https://github.com/ziichatlabs/development.tools/tree/deploy-tool` (tại nhánh ziichat_flutter_ui), để tránh trường hợp thiếu assets khi deploy
    
- Step 6:
    - Chỉnh sửa đường dẫn trong file index.html vừa mới copy thành
    from
    ```<base href="/">```
    to
    ```<base href="https://ziichatlabs.github.io/development.tools/">``` (Deploy domain)
- Step 7:
    - Commit and push code
 
# For QC
- Step 1:
    - Sau khi truy cập vào deploy domain (https://ziichatlabs.github.io/development.tools/),
      chuột phải chọn Inspect.
      
     ![Screenshot 2024-08-16 at 10 47 42](https://github.com/user-attachments/assets/46f554d0-081b-419c-8b0d-c5ec6e62a90d)
- Step 2:
    - Click vào biểu tượng reponsive ở góc trái cửa sổ inspect
      
     ![Screenshot 2024-08-16 at 10 49 02](https://github.com/user-attachments/assets/6487bf88-d97f-482c-a146-267faeecb959)
    - Giao diện sẽ trông như thế này
      
     ![Screenshot 2024-08-16 at 10 51 19](https://github.com/user-attachments/assets/e3baa430-7f5b-45cc-90e9-fd953928b68b)

- Step 3:
  - Tại đây có thể chọn các thiết bị khác nhau để test cũng như có thể chọn chế độ quay ngang hoặc quay dọc
    
  ![Screenshot 2024-08-16 at 10 52 28](https://github.com/user-attachments/assets/5753c3aa-39a2-4315-90a9-aa4a0a0d173e)

