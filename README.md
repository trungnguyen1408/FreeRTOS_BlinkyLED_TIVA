# FreeRTOS_BlinkyLED_TIVA

- Chương trình sử dụng FreeRTOS cho kit TIVAC_Launchpad để thực hiện giao tiếp với LED và nút nhấn đơn giản.

- Chương trình gồm ba tasks chạy song song như sau:

  - Task1: chớp led đỏ với chu kỳ 1s
  - Task 2: Nếu nhấn SW1, bật led Green, nếu nhả, tắt led Green
  - Task 3: Nếu nhấn SW2, bật led Blue, nhả ra vẫn bật. Nhấn SW2 lần nữa, tắt led Blue, nhả ra vẫn tắt.

- Download kernel và các file drive của FreeRTOS tại *https://www.freertos.org/*
- Để chạy được chương trình trên cần tài thêm file thư hiện của kit Tiva-C là **TivaWare** và add vào project.
