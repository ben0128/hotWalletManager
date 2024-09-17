## 簡介
這是一個錢包管理網站，能夠讓用戶匯入不同的區塊鏈錢包地址，並根據地址內的代幣獲取相對應的價格。

## 功能
- 後端提供用戶驗證服務，並從資料庫中取得資產明細及用戶基本資料。
- 前端接收後端傳來的資料，根據代幣種類調用價格獲取微服務的API。
- 根據各交易所的價格計算平均值，並透過SSE（Server-Sent Events）回傳給前端顯示。

## 技術棧
- 前端：React, Next.js
- 後端：Bun, elysia
- 資料傳輸：tRPC
- 資料庫：MongoDB, Prisma
- 其他：Redis, RabbitMQ, Docker, Docker Compose

## 架構需求
整個流程需要使用message queue和Redis來確保數據的即時性和可靠性。