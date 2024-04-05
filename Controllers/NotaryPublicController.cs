using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace OregonOpenDataApi.Controllers
{
    [Route("api/v1/[controller]")]
    [ApiController]
    public class NotaryPublicController : ControllerBase
    {
        private readonly ILogger<NotaryPublicController> _logger;

        public NotaryPublicController(ILogger<NotaryPublicController> logger)
        {
            _logger = logger;
        }
    }
}
