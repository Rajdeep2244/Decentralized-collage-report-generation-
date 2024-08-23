# DecentralizedReport Smart Contract - README

![image](https://github.com/user-attachments/assets/800b06c9-8ed7-46fc-9e4a-ff2c5a5fad7c)


## Vision
The **DecentralizedReport** smart contract aims to provide a secure and transparent platform for managing student reports on the blockchain. The platform empowers students to submit their academic reports while allowing teachers to verify the authenticity of these reports. By leveraging blockchain technology, this platform ensures that all data is tamper-proof and easily accessible by authorized users.

#### **Contract Address**
**Contract Address:** 0xcd8ee83ed9d74a0e719b1202bcf59803ee42588a
![image](https://github.com/user-attachments/assets/0b4ee865-1f7d-4bb9-8788-9edd7b1cf5c3)



> Replace `0xYourContractAddressHere` with the actual deployed contract address after deployment.

## Flowchart

```
+--------------------------+
|          Admin           |
+--------------------------+
        |          |         
        v          v       
+------------+    +------------+
|  Add/Remove|    | Add/Remove|
|   Teachers |    |  Students |
+------------+    +------------+
        |
        v
+-----------------------------+
|          Teachers           |
+-----------------------------+
        |            
        v            
+-----------------------------+
|      Verify Reports         |
+-----------------------------+
        |            
        v
+-----------------------------+
|         Reports             |
|    (Student Submissions)    |
+-----------------------------+
        |
        v
+-----------------------------+
|       Students              |
+-----------------------------+
```

## Features

- **Admin Management:** Only the admin can add or remove teachers from the platform.
- **Teacher Verification:** Teachers can verify student-submitted reports.
- **Student Submissions:** Students can submit their reports, which can be viewed by themselves and the admin.
- **Report Accessibility:** Only the report owner (student) and the admin can access and view specific reports.

## Usage

### 1. Admin Functions

- **Add a Teacher:** The admin can add a teacher by calling the `addTeacher(address _teacher)` function.
- **Remove a Teacher:** The admin can remove a teacher by calling the `removeTeacher(address _teacher)` function.

### 2. Student Functions

- **Submit a Report:** A student can submit a report by calling the `addReport(string memory _studentName, string memory _course, string memory _grade)` function.
- **View a Report:** A student or the admin can view a report by calling the `viewReport(uint256 _id)` function.

### 3. Teacher Functions

- **Verify a Report:** A teacher can verify a report by calling the `verifyReport(uint256 _id)` function.

## Future Scope

- **Decentralized Credentials:** Integration with decentralized identity platforms to further enhance report authentication.
- **Multi-Signature Verification:** Implementing multi-signature verification for more secure report validation.
- **Course History:** Adding a feature to track the course history of students over different semesters.
- **Interoperability:** Expand the system to support interoperability with other educational platforms and institutions.

## Deployment

The contract can be deployed on any Ethereum-compatible blockchain. After deployment, replace the placeholder address with the actual contract address.

#### **Contact Information**

For queries or more information, please contact:

**Name:** Rajdeep Karmakar
**Email:** rajdeepkarmakar721@gmail.com 
**GitHub:** https://github.com/Rajdeep2244
**LinkedIn:** www.linkedin.com/in/rajdeep-karmakar-11236320b

---

**Disclaimer:** This project is for educational purposes only. Ensure thorough testing before deploying on a live network.

---

Replace placeholders with your actual details before distribution.
