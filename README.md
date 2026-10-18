# Домашнее задание: создание S3-бакета с помощью Terraform

- Имя: Viktor
- Группа: PTM060326
- Регион: eu-central-1 (Frankfurt)
- Бакет: ptm060326-bucket-viktor

## Конфигурация

- main.tf — S3-бакет с именем из переменной bucket_name и тегами name и environment.
- providers.tf — провайдер AWS и регион Frankfurt.
- variables.tf — переменная bucket_name со значением по умолчанию ptm060326-bucket-viktor.
- .terraform.lock.hcl — версия провайдера и контрольные суммы.

## Порядок выполнения в Git Bash

```bash
cd /e/ich/docker/hw6/s3-terraform-homework
ls -la
terraform init
terraform validate
terraform plan
terraform apply -no-color
```

После проверки плана для создания бакета введено yes. Результат:

```text
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

Бакет создан в регионе eu-central-1 с тегами name = ptm060326-bucket-viktor и environment = lab.

Для удаления бакета и сохранения вывода выполнена команда:

```bash
terraform destroy -no-color 2>&1 | tee destroy-output.txt
```

После подтверждения yes получен результат:

```text
Destroy complete! Resources: 1 destroyed.
```

## Результаты

- [apply-output.png](apply-output.png) — скриншот команды создания и её результата.
- [destroy-output.txt](destroy-output.txt) — вывод команды удаления.
- [destroy-output.png](destroy-output.png) — скриншот удаления.
- [commands-and-output.md](commands-and-output.md) — пошаговая инструкция с полным выводом команд.

Файлы состояния, сохранённые планы, ключи и локальные настройки исключены через .gitignore.
