# AWS Lab 1 - Infraestructura con Terraform

Este proyecto crea una infraestructura básica en AWS usando Terraform. Incluye una VPC privada, subnets, grupos de seguridad, una instancia RDS MySQL y una instancia EC2 Amazon Linux lista para conectarse e instalar MySQL.

## Estructura del Proyecto

- **main.tf**: Orquesta los módulos de red, RDS y EC2.
- **provider.tf**: Configura el proveedor de AWS.
- **variables.tf**: Variables globales para la infraestructura.
- **outputs.tf**: Expone los endpoints y recursos principales.
- **networking/**: Módulo para VPC, subnets y security groups.
- **rds/**: Módulo para la base de datos RDS MySQL.
- **ec2/**: Módulo para la instancia EC2 Amazon Linux.

## Recursos que se crean

- **VPC** privada con DNS habilitado.
- **Subnets** privadas para RDS y EC2.
- **Security Group** que permite:
  - Acceso MySQL (3306) desde cualquier IP (recomendado restringir).
  - Acceso SSH (22) desde cualquier IP (recomendado restringir).
- **RDS MySQL** privada, sin acceso público.
- **EC2 Amazon Linux** (tipo nano o micro), con acceso SSH y script de instalación de MySQL.

## Requisitos

- [Terraform](https://www.terraform.io/downloads)
- Cuenta de AWS y credenciales válidas

## Variables principales

- `aws_region`: Región de AWS (ejemplo: `us-east-2`)
- `db_username`: Usuario de la base de datos
- `db_password`: Contraseña de la base de datos
- `db_name`: Nombre de la base de datos

## Despliegue

1. Clona el repositorio y entra a la carpeta.
2. Configura tus variables en un archivo `terraform.tfvars` o exporta tus credenciales como variables de entorno.
3. Inicializa Terraform:
   ```sh
   terraform init
   ```
4. Revisa el plan de ejecución:
   ```sh
   terraform plan
   ```
5. Aplica la infraestructura:
   ```sh
   terraform apply
   ```

## Acceso a los recursos

- **EC2:**  
  Conéctate por AWS Connect
- **RDS:**  
  El endpoint de la base de datos se muestra en los outputs de Terraform.

## Notas de Seguridad

- **No uses `0.0.0.0/0` en producción** para MySQL o SSH. Restringe el acceso a tu IP.
- **No subas tus credenciales de AWS** a repositorios públicos.

## Automatización

Incluye un workflow de GitHub Actions para validar y aplicar cambios automáticamente en la rama `main`.

---

**Autor:**  
Camilo Rojas - Repo Capacitacion GFT Terraform