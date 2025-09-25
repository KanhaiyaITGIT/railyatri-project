<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Railyatri Clone</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }

        input {
            padding: 5px;
            width: 250px;
            font-size: 16px;
        }

        button {
            padding: 6px 12px;
            font-size: 16px;
            margin-left: 5px;
        }

        #results {
            margin-top: 20px;
        }

        .train-card {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px auto;
            width: 300px;
            border-radius: 5px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>Railyatri Learning Project</h1>
    <input type="text" id="search" placeholder="Enter Train Name or Number">
    <button onclick="searchTrain()">Search</button>

    <div id="results"></div>

    <script>
        // Sample train data
        const trains = [
            { number: "12345", name: "Rajdhani Express", source: "New Delhi", dest: "Mumbai" },
            { number: "54321", name: "Shatabdi Express", source: "Delhi", dest: "Chandigarh" },
            { number: "67890", name: "Duronto Express", source: "Mumbai", dest: "Kolkata" },
            { number: "11223", name: "Garib Rath", source: "Lucknow", dest: "Delhi" },
            { number: "33445", name: "Humsafar Express", source: "Chennai", dest: "Bangalore" }
        ];

        function searchTrain() {
            const query = document.getElementById("search").value.toLowerCase();
            const resultsDiv = document.getElementById("results");
            resultsDiv.innerHTML = "";

            const results = trains.filter(train => 
                train.name.toLowerCase().includes(query) || train.number.includes(query)
            );

            if (results.length === 0) {
                resultsDiv.innerHTML = "<p>No train found</p>";
                return;
            }

            results.forEach(train => {
                const div = document.createElement("div");
                div.className = "train-card";
                div.innerHTML = `<strong>${train.number}</strong> - ${train.name}<br>
                                 From: ${train.source} → To: ${train.dest}`;
                resultsDiv.appendChild(div);
            });
        }
    </script>
</body>
</html>

