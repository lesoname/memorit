## Melhorias a serem feitas nos projetos

* Usar variáveis de ambiente para configurar arquivos yml. Ex: `database.yml` agora tem uma configuração pegando o host
  de uma variável de ambiente no arquivo `config/application.yml`. Isso facilita o deploy e futura configuração em ambiente docker.
  **Atenção:** Adicionar o arquivo no `.gitignore` pois pode variar de ambiente.
* Configurar ambiente `docker` para rodar a aplicação. **Motivo:** Hoje isso é requisito fundamental como boa prática de programação visto
  que sempre a ideia é jogar na Cloud as aplicações.  

