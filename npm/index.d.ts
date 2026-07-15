declare module '@apiverve/acronymexpander' {
  export interface acronymexpanderOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface acronymexpanderResponse {
    status: string;
    error: string | null;
    data: AcronymExpanderData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface AcronymExpanderData {
      acronym:         null | string;
      expansions:      MostCommon[];
      mostCommon:      MostCommon;
      source:          null | string;
      contextProvided: null | string;
  }
  
  interface MostCommon {
      expansion:   null | string;
      description: null | string;
      category:    null | string;
  }

  export default class acronymexpanderWrapper {
    constructor(options: acronymexpanderOptions);

    execute(callback: (error: any, data: acronymexpanderResponse | null) => void): Promise<acronymexpanderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: acronymexpanderResponse | null) => void): Promise<acronymexpanderResponse>;
    execute(query?: Record<string, any>): Promise<acronymexpanderResponse>;
  }
}
