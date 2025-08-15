
### 🧾 Tabla: Paciente

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK     | Referencia a | Descripción                         |
|---------------|--------------|--------|-----|-----|------|--------|----------------------------|--------------|-------------------------------------|
| ID_Paciente   | INT          | -      | ✅  | ❌  | ❌   | ✅     | > 0                        | -            | Identificador único del paciente    |
| Nombre        | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | Longitud mínima 3          | -            | Nombre completo del paciente        |
| Edad          | INT          | -      | ❌  | ❌  | ❌   | ❌     | ≥ 0                        | -            | Edad del paciente                   |
| Dirección     | NVARCHAR     | 100    | ❌  | ❌  | ❌   | ❌     | -                          | -            | Dirección de residencia             |
| Teléfono      | NVARCHAR     | 10     | ❌  | ❌  | ❌   | ❌     | Formato numérico           | -            | Teléfono de contacto                |

### 🧾 Tabla: Doctor

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK     | Referencia a | Descripción                         |
|---------------|--------------|--------|-----|-----|------|--------|----------------------------|--------------|-------------------------------------|
| ID_Doctor     | INT          | -      | ✅  | ❌  | ❌   | ✅     | > 0                        | -            | Identificador único del doctor      |
| Nombre        | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | Longitud mínima 3          | -            | Nombre completo del doctor          |
| Especialidad  | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | -                          | -            | Especialidad médica                 |
| Teléfono      | NVARCHAR     | 10     | ❌  | ❌  | ❌   | ❌     | 10 dígitos                 | -            | Teléfono de contacto                |

### 🧾 Tabla: Cita

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK     | Referencia a | Descripción                         |
|---------------|--------------|--------|-----|-----|------|--------|----------------------------|--------------|-------------------------------------|
| ID_Cita       | INT          | -      | ✅  | ❌  | ❌   | ✅     | > 0                        | -            | Identificador único de la cita      |
| Fecha         | DATE         | -      | ❌  | ❌  | ❌   | ❌     | Fecha válida               | -            | Fecha de la cita                    |
| Hora          | TIME         | -      | ❌  | ❌  | ❌   | ❌     | Formato 24h                | -            | Hora programada de la cita          |
| ID_Paciente   | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                          | Paciente     | Paciente que solicita la cita       |
| ID_Doctor     | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                          | Doctor       | Doctor que atenderá la cita         |
