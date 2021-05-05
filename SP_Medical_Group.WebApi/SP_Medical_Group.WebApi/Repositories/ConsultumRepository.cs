using SP_Medical_Group.WebApi.Contexts;
using SP_Medical_Group.WebApi.Domains;
using SP_Medical_Group.WebApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SP_Medical_Group.WebApi.Repositories
{
    public class ConsultumRepository : IConsultumRepository
    {
        Medical_GroupContext ctx = new Medical_GroupContext();

        public void Atualizar(int id, Consultum consulta)
        {
            Consultum consultaAntiga = ctx.Consulta.Find(id);

            if (consulta.IdPaciente != null)
            {
                consultaAntiga.IdPaciente = consulta.IdPaciente;
            }
            if (consulta.IdMedico != null)
            {
                consultaAntiga.IdMedico = consulta.IdMedico;
            }
            if (consulta.IdSituacao != null)
            {
                consultaAntiga.IdSituacao = consulta.IdSituacao;
            }
            if (consulta.DataConsulta != null)
            {
                consultaAntiga.DataConsulta = consulta.DataConsulta;
            }
            if (consulta.Descricao != null)
            {
                consultaAntiga.Descricao = consulta.Descricao;
            }

            ctx.Consulta.Update(consultaAntiga);

            ctx.SaveChanges();
        }

        public Consultum BuscarPorId(int id)
        {
            return ctx.Consulta.Find(id);
        }

        public void Criar(Consultum consulta)
        {
            ctx.Consulta.Add(consulta);

            ctx.SaveChanges();
        }

        public void Deletar(int id)
        {
            Consultum consulta = ctx.Consulta.Find(id);

            ctx.Consulta.Remove(consulta);

            ctx.SaveChanges();
        }

        public List<Consultum> Listar()
        {
            return ctx.Consulta.ToList();
        }

        public List<Consultum> ListarPa(int id)
        {
            return ctx.Consulta.Where(x => x.IdPaciente == id).ToList();
        }
        
        public List<Consultum> ListarMed(int id)
        {
            return ctx.Consulta.Where(x => x.IdMedico == id).ToList();
        }
    }
}
