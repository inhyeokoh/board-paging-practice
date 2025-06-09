<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>테스트 사이트</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f5f5f5;
        }

        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: inline;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }

        input[type="text"]:focus, textarea:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0,123,255,0.3);
        }

        textarea {
            height: 200px;
            resize: vertical;
        }

        .button-group {
            text-align: center;
            margin-top: 30px;
        }

        button {
            padding: 12px 30px;
            margin: 0 10px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .submit-btn {
            background-color: #007bff;
            color: white;
        }

        .submit-btn:hover {
            background-color: #0056b3;
        }

        .cancel-btn {
            background-color: #6c757d;
            color: white;
        }

        .cancel-btn:hover {
            background-color: #545b62;
        }
    </style>
</head>
<body>

    <form action="/board/write" method="post">
        <div class="form-group">
            <label for="writer">작성자:</label>
            <input type="text" id="writer" name="writer" required placeholder="작성자명을 입력하세요">
        </div>

        <div class="form-group">
            <label for="title">제목:</label>
            <input type="text" id="title" name="title" required placeholder="제목을 입력하세요">
        </div>

        <div class="form-group">
            <label for="content">내용:</label>
            <textarea id="content" name="content" required placeholder="내용을 입력하세요"></textarea>
        </div>

        <div class="form-group">
            <label for="number" value>숫자 입력:</label>
            <input type="number" value="1000" min="100" max="2000" step="100" required>
        </div>

        <label for="sel">게시판 선택</label>
        <select name="sel" id="sel">
            <option value="자유">자유</option>
            <option value="정보">정보</option>
            <option value="패션">패션</option>
        </select>

        <p>성별 선택:</p>

        <input type="radio" id="man" name="gender" value="남자">
        <label for="man">남자</label>

        <input type="radio" id="woman" name="gender" value="여자" checked>
        <label for="woman">여자</label>

        <input type="radio" id="nogen" name="gender" value="비공개">
        <label for="nogen">비공개</label>

        <label for="hobby">취미</label>
        <input type="checkbox" name="hobby" value="축구"> 축구
        <input type="checkbox" name="hobby" value="농구"> 농구
        <input type="checkbox" name="hobby" value="야구"> 야구


        <div class="button-group">
            <button type="submit" class="submit-btn">작성 완료</button>
            <button type="button" class="cancel-btn" onclick="location.href='/board'">취소</button>
        </div>
    </form>


</body>
</html>