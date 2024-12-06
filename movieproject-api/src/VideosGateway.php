<?php

class VideosGateway
{
    private PDO $conn;
    public function __construct(Database $database)
    {
        $this->conn = $database->getConnection();
    }

    public function getAll(): array
    {
        $sql = "SELECT * FROM videos";
        $res = $this->conn->prepare($sql);
        $res->execute();

        $data = $res->fetchAll(PDO::FETCH_ASSOC);
        return $data;
    }

    public function create(array $data): string
    {
        $sql = "INSERT INTO videos (movieId, userId, name, url,  site, videoKey, videoType, official) 
                VALUES (:movieId, :userId, :name, :url, :site, :videoKey, :videoType, :official)";
        $res = $this->conn->prepare($sql);

        $res->bindValue(":movieId",$data["movieId"], PDO::PARAM_INT);
        $res->bindValue(":userId",$data["userId"], PDO::PARAM_INT);
        $res->bindValue(":url",$data["url"], PDO::PARAM_STR);
        $res->bindValue(":name",$data["name"], PDO::PARAM_STR);
        $res->bindValue(":site",$data["site"], PDO::PARAM_STR);
        $res->bindValue(":videoKey",$data["videoKey"], PDO::PARAM_STR);
        $res->bindValue(":videoType",$data["videoType"], PDO::PARAM_STR);
        $res->bindValue(":official",$data["official"], PDO::PARAM_INT);

        $res->execute();
        return $this->conn->lastInsertId();
    }

    public function get(string $id)
    {
        $sql = "SELECT * FROM videos WHERE id = :id";
        $res = $this->conn->prepare($sql);
        $res->bindValue(":id", $id, PDO::PARAM_INT);
        $res->execute();
        $data = $res->fetch(PDO::FETCH_ASSOC);

        return $data;
    }

    public function update(array $current, array $new): int
    {
        $sql = "UPDATE videos SET movieId=:movieId, url=:url, name=:name, site=:site, videoKey=:videoKey, videoType=:videoType, official=:official WHERE id =:id AND userId = :userId";
        $res = $this->conn->prepare($sql);
        $dateUpdated = (new DateTime())->getTimeStamp();
        $res->bindValue(":userId",$current["userId"], PDO::PARAM_INT);
        $res->bindValue(":movieId",$new["movieId"] ?? $current["movieId"], PDO::PARAM_INT);
        $res->bindValue(":url",$new["url"] ?? $current["url"], PDO::PARAM_STR);
        $res->bindValue(":name",$new["name"] ?? $current["name"], PDO::PARAM_STR);
        $res->bindValue(":site",$new["site"] ?? $current["site"], PDO::PARAM_STR);
        $res->bindValue(":videoKey",$new["videoKey"] ?? $current["videoKey"], PDO::PARAM_STR);
        $res->bindValue(":videoType",$new["videoType"] ?? $current["videoType"], PDO::PARAM_STR);
        $res->bindValue(
            ":official", 
            isset($new["official"]) ? ($new["official"] === "true" ? 1 : 0) : $current["official"], 
            PDO::PARAM_INT
        );
        
        $res->bindValue(":id", $current["id"], PDO::PARAM_INT);

        $res->execute();

        return $res->rowCount();
    }

    public function delete(string $id, string $userId): int
    {
        $sql = "DELETE FROM videos WHERE id = :id AND userId = :userId";
        $res = $this->conn->prepare($sql);
        $res->bindValue(":id", $id, PDO::PARAM_INT);
        $res->bindValue(":userId", $userId, PDO::PARAM_INT);

        $res->execute();

        return $res->rowCount();
    }
}