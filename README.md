# Descrição

Repositório para scripts de automações diversos.

![](https://media.giphy.com/media/CmFMWpEa4IFtS/giphy.gif)

# Requisito
[Azure CLI](https://docs.microsoft.com/pt-br/cli/azure/install-azure-cli-windows?tabs=azure-cli) instalado.

# Como usar

Acesse a pasta do projeto que está com repositório hospeado no Azure Devops, de preferencia faça ou automatize o checkout para a branch que deseja realizar o PR. 
Pode ser adicionado hard code ou automatizar - (Personal flavor :3)

```cd "Meu Projeto"```

Adicionar o nome do projeto e o nome do repositório que estão no azure (pode ser com espaços mesmo) ou Id do Projeto. 
É possível obter o ID do projeto ou mesmo o nome entre outros dados a partir do seguinte comando cli: `az repos list`

```
$ProjectName = 'Meu Projeto' 
$RepositoryName = 'Meu Projeto'
```

Adicionar o(s) WorkItems separados por vírgula

```
$WorkItems = "11,19".split(',') | % {iex $_}
```

Adicionar o título

```$Title = 'Meu PR'```

Adicionar a descrição, caso tenham várias, separar por vírgula (É possível adicionar markup, pois será renderizado no devops)

```$Description = 'Minha descricação linha 1, Descrição linha 2'.Split(',')```


Você pode rodar o script tanto pelo Windows powershell ISE  ou no ```.\NomeDoArquivoDoScript.ps1```


# Referencias

[Azure CLI Repos](https://docs.microsoft.com/pt-br/cli/azure/repos?view=azure-cli-latest)
