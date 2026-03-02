# hadoop-to-aws-datalake

Hadoop to AWS Cloud Data Lake: Ingestão e Migração Híbrida
Este projeto demonstra a configuração de um ecossistema de Big Data on-premises utilizando Hadoop 3.4.1 e a subsequente migração de dados para um Data Lake na AWS (Amazon S3). O foco principal foi a resolução de desafios reais de infraestrutura, rede e segurança em ambientes de Engenharia de Dados.

🚀 Tecnologias Utilizadas
Hadoop 3.4.1: HDFS e YARN (Master/Slaves).

Linux (Ubuntu/CentOS): Administração de servidores e Shell Scripting.

Java 17: Gestão de runtime e solução de conflitos de JVM.

Amazon S3: Landing Zone segura para armazenamento de objetos em nuvem.

🛠️ Desafios Técnicos Superados
1. Resolução de Conflitos de JVM (Java 17+)
Ao iniciar o ResourceManager, identifiquei uma falha crítica de InaccessibleObjectException devido às restrições de segurança das versões modernas do Java.

Solução: Realizei a abertura manual de módulos do Java no arquivo yarn-env.sh, permitindo que o Hadoop acessasse as bibliotecas necessárias para o funcionamento do cluster.

2. Configuração de Rede e Resolução de Nomes
Para garantir que o navegador e as ferramentas de ingestão pudessem localizar os nós do cluster (Slaves), configurei manualmente o mapeamento de IPs e Hostnames.

Solução: Edição do arquivo hosts do sistema operacional para garantir a comunicação estável entre o ambiente local e o cluster virtualizado.

3. Implementação de Landing Zone no Amazon S3
Visando a escalabilidade, o projeto evoluiu de um armazenamento local para a nuvem.

Criação de Buckets: Implementei um bucket S3 seguindo as melhores práticas de governança de dados.

Segurança: Bloqueio total de acesso público para garantir que os dados brutos permaneçam protegidos conforme regulamentações e privacidade.

Ingestão: Realizei o upload do dataset questoes.csv com sucesso, estabelecendo o ponto de partida para pipelines de processamento futuros.
