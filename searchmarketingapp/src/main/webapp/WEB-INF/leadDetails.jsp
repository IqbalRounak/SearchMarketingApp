<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lead Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .details-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .detail-item {
            margin-bottom: 20px;
        }

        .detail-item label {
            font-weight: bold;
            color: #555;
            display: block;
            margin-bottom: 5px;
        }

        .detail-item input[type="text"],
        .detail-item input[type="email"],
        .detail-item input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            background-color: #f9f9f9;
        }

        .detail-item input[type="text"]:disabled,
        .detail-item input[type="email"]:disabled,
        .detail-item input[type="number"]:disabled {
            background-color: #e9ecef;
        }
    </style>
</head>
<body>

    <div class="details-container">
        <h2>Lead Details</h2>

        <div class="detail-item">
            <label for="id">Lead ID</label>
            <input type="number" id="id" name="id" value="${lead.id}" disabled>
        </div>
        <div class="detail-item">
            <label for="firstName">First Name</label>
            <input type="text" id="firstName" name="firstName" value="${lead.firstName}" disabled>
        </div>
        <div class="detail-item">
            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" name="lastName" value="${lead.lastName}" disabled>
        </div>
        <div class="detail-item">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="${lead.email}" disabled>
        </div>
        <div class="detail-item">
            <label for="mobile">Mobile</label>
            <input type="number" id="mobile" name="mobile" value="${lead.mobile}" disabled>
        </div>
    </div>

</body>
</html>
