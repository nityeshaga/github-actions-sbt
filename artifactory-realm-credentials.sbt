val artifactoryRealmUsername = sys.env.get("ARTIFACTORY_REALM_USERNAME").getOrElse("")
val artifactoryRealmPassword = sys.env.get("ARTIFACTORY_REALM_PASSWORD").getOrElse("")

publishTo := Some("Artifactory Realm" at "http://lib.innovaccer.com:8081/artifactory/sbt-dev-local;build.timestamp=" + new java.util.Date().getTime)
credentials += Credentials("Artifactory Realm", "lib.innovaccer.com", artifactoryRealmUsername, artifactoryRealmPassword)
