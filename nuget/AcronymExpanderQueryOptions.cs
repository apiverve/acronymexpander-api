using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.AcronymExpander
{
    /// <summary>
    /// Query options for the Acronym Expander API
    /// </summary>
    public class AcronymExpanderQueryOptions
    {
        /// <summary>
        /// The acronym to expand (max 20 characters)
        /// Example: API
        /// </summary>
        [JsonProperty("acronym")]
        public string Acronym { get; set; }

        /// <summary>
        /// Optional context to help determine the correct meaning
        /// Example: software
        /// </summary>
        [JsonProperty("context")]
        public string Context { get; set; }
    }
}
