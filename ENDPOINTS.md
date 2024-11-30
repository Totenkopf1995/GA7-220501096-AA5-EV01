# Documentación de Endpoints de la API

## Base URL
http://localhost:3000/api/v1

## Endpoints

### 1. Registro de Usuario (Sign Up)

- **Método**: `POST`
- **URL**: `/sign_up`
- **Descripción**: Crea un nuevo usuario en el sistema.
- **Cuerpo de la Solicitud**:
  ```json
  {
    "user": {
      "email": "test@example.com",
      "password": "password",
      "password_confirmation": "password"
    }
  }
  ```
- **Respuesta Exitosa**:
  - **Código**: `201 Created`
  - **Cuerpo**:
    ```json
    {
      "message": "User created successfully"
    }
    ```

- **Respuesta de Error**:
  - **Código**: `422 Unprocessable Entity`
  - **Cuerpo**:
    ```json
    {
      "errors": ["Email has already been taken"]
    }
    ```

### 2. Inicio de Sesión (Sign In)

- **Método**: `POST`
- **URL**: `/sign_in`
- **Descripción**: Inicia sesión con las credenciales del usuario.
- **Cuerpo de la Solicitud**:
  ```json
  {
    "email": "test@example.com",
    "password": "password"
  }
  ```
- **Respuesta Exitosa**:
  - **Código**: `200 OK`
  - **Cuerpo**:
    ```json
    {
      "message": "Signed in successfully"
    }
    ```

- **Respuesta de Error**:
  - **Código**: `401 Unauthorized`
  - **Cuerpo**:
    ```json
    {
      "errors": ["Invalid email or password"]
    }
    ```



## Notas Adicionales

- Todos los endpoints devuelven respuestas en formato JSON.
- Asegúrate de enviar las solicitudes con el encabezado `Content-Type: application/json`.
