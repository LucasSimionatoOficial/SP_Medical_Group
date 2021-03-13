--DML

USE Sp_Medical_Group

INSERT INTO Clinica (CRM, CPNJ, Endereco, NomeFantasia, RazaoSocial)
VALUES ('54356-SP', 86400902000130, 'Av. Barão Limeira, 532, São Paulo, SP', 'SP Medical Group', 'Clinica Possarle');

INSERT INTO Situacao (Situacao)
VALUES ('Realizada'), ('Agendada'), ('Cancelada');

INSERT INTO Especialidade (Especialidade)
VALUES ('Acupuntura'), ('Anestesiologia'), ('Angiologia'), ('Cardiologia'), ('Cirurgia Cardiovascular'), ('Cirurgia da Mão'), ('Cirurgia do Aparelho Digestivo'), ('Cirurgia Geral'), ('Cirurgia Pediátrica'), ('Cirurgia Plástica'), ('Cirurgia Torácica'), ('Cirurgia Vascular'), ('Dermatologia'), ('Radioterapia'), ('Urologia'), ('Pediatria'), ('Psiquiatria');

INSERT INTO TipoUsuario (Tipo)
VALUES ('Paciente'), ('Medico'), ('Administrador');

INSERT INTO Usuario (idTipoUsuario, idClinica, Nome, Email, Senha)
VALUES	(1, 1, 'Ligia', 'ligia@gmail.com', 123),
		(1, 1, 'Alexandre', 'alexandre@gmail.com', 123),
		(1, 1, 'Fernando', 'fernando@gmail.com', 123),
		(1, 1, 'Henrique', 'henrique@gmail.com', 123),
		(1, 1, 'João', 'joao@hotmail.com', 123),
		(1, 1, 'Bruno', 'bruno@gmail.com', 123),
		(1, 1, 'Mariana', 'mariana@outlook.com', 123),
		(2, 1, 'Ricardo Lemos', 'ricardo@gmail.com', 123),
		(2, 1, 'Roberto Possarle', 'roberto@gmail.com', 123),
		(2, 1, 'Helena Strada', 'helena@hotmail.com',123);

INSERT INTO Paciente (idUsuario, Descricao, Situacao, DataNascimento, Telefone, RG, CPF, Endereco)
VALUES	(1, '', 1, '13/10/1983',1134567654, 435225435, 94839859000, 'Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000'),
		(2, '', 1, '23/07/2001', 11987656543, 326543457, 73556944057, 'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200'),
		(3, '', 1, '10/10/1978', 11972084453, 546365253, 16839338002, 'Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200'),
		(4, '', 1, '13/10/1985', 1134566543, 543663625, 14332654765, 'R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030'),
		(5, '', 1, '27/08/1975', 1176566377,	325444441, 91305348010, 'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380'),
		(6, '', 1, '21/03/1972', 11954368769, 545662667, 79799299004, 'Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001'),
		(7, '', 1, '05/03/2018', 0, 545662668, 13771913039, 'R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140');

INSERT INTO Medico (idEspecialidade, idUsuario)
VALUES (2, 8), (17, 9), (16, 10);

INSERT INTO Consulta (idPaciente, idSituacao, idMedico, DataConsulta, Descricao)
VALUES	(7, 1, 3, '20/01/2020 15:00', ''),
		(2, 3, 2, '06/01/2020 10:00', ''),
		(3, 1, 2, '07/02/2020 11:00', ''),
		(2, 1, 2, '06/02/2018 10:00', ''),
		(4, 3, 1, '07/02/2019 11:00', ''),
		(7, 2, 3, '03/08/2020 15:00', ''),
		(4, 2, 1, '09/03/2020 11:00', '');