# Comandos terraform

## terrform plan
Faz um preview do que será aplicado pelo arquivo main.tf
- terrform plan

## terrform plan (+var)
Faz um preview do que será aplicado pelo arquivo main.tf, passando variavel esperada pelo arquivo
- terrform plan -var 'instance_type=t2.micro'
- terrform plan -var-file="dev.tfvars"
- terrform plan -var-file="prod.tfvars"

## terrform apply (+yes)
Aplica o que está no main.tf (espera confirmação via "yes")
- terrform apply
- terrform apply -var 'instance_type=t2.micro'
- terrform apply -var-file="dev.tfvars"
- terrform apply -var-file="prod.tfvars"

## terraform show 
Mostra o que foi aplicado via terraform com arquivo main.tf
- terraform show

## terraform destroy (+yes)
Deleta o que foi criado com o arquivo main.tf (espera confirmação via "yes")
- terraform destroy

## terraform init
Baixa os recursos para trabalhar com terraform (semelhante ao git init)
- terraform init

## terraform taint {recurso.objecto}
Marca um recurso para ser substituido no próximo apply
- terraform taint *aws_s3_bucket_object.object*

## terraform untaint {recurso.objecto}
Desmarca um recurso previamente marcado com taint
- terraform untaint *aws_s3_bucket_object.object*

## terraform console
Abre um console que permetepermite buscar usando strings interpoladas
- terraform console
- *aws_s3_bucket_object.object.bucket*
output: *curso-terraform-27042020*