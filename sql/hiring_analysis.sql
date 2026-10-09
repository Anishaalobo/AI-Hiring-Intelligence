-- check 2026 job counts by period
select
    period,
    count(*) as total_jobs
from read_parquet('../data/unified_core.parquet')
where period in ('2026-03', '2026-04')
group by period
order by period;



-- compare ai/ml hiring share across march and april 2026
with classified_jobs as (
    select
        period,
        case
            when list_contains(role_families, 'ai_llm_engineer')
                 and list_contains(role_families, 'ml_engineer')
                then 'both'
            when list_contains(role_families, 'ai_llm_engineer')
                then 'ai_llm_only'
            when list_contains(role_families, 'ml_engineer')
                then 'ml_only'
            else 'other'
        end as ai_ml_group
    from read_parquet('data/unified_core.parquet')
    where period in ('2026-03', '2026-04')
)
select
    period,
    count(*) as total_jobs,
    count(*) filter (where ai_ml_group != 'other') as ai_ml_jobs,
    round(
        100.0 * count(*) filter (where ai_ml_group != 'other')
        / count(*),
        2
    ) as ai_ml_share_pct
from classified_jobs
group by period
order by period;