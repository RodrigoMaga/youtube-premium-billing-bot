# Database diagram
```mermaid
erDiagram
    PARTICIPANT o|--o{ PAYMENT : contains

    PARTICIPANT {
        long id PK
        string name
        string email
        string phone
        int order
    }

    PAYMENT {
        long id PK
        long participant_id FK
        enum status "PAYED, NOT_PAYED"
        date month
        date year
    }
```