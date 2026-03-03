# Ajuste para corrigir erro de InaccessibleObjectException no Java 17+
export YARN_RESOURCEMANAGER_OPTS="--add-opens java.base/java.lang=ALL-UNNAMED"