func fetchUserId(from server: String)
    async -> Int {
        if server == "primary" {
            return 97
        }
        return 501
    }

func fetchUsername(from server: String)
    async -> String {
        let userID = await
        fetchUserId(from: server)
        if userID == 501 {
            return "John Appleseed"
        }
        return "Guest"
    }
