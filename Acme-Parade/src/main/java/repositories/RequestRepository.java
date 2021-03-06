
package repositories;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import domain.Request;

@Repository
public interface RequestRepository extends JpaRepository<Request, Integer> {

	@Query("select r from Request r where r.member.id = ?1")
	Collection<Request> findByMember(int memberId);

	@Query("select r from Request r where r.parade.id = ?1")
	Collection<Request> findAllByParade(int paradeId);

	@Query("select r from Request r where r.parade.id = ?1")
	Request findByParade(int paradeId);

	@Query("select 1.0*count(a) / (select count(n) from Request n) from Request a where a.status='APPROVED'")
	Double ratioapprovedRequest();

	@Query("select 1.0*count(a) / (select count(n) from Request n) from Request a where a.status='PENDING'")
	Double ratioPendingRequest();

	@Query("select 1.0*count(a) / (select count(n) from Request n) from Request a where a.status='REJECTED'")
	Double ratioRejectedRequest();

	@Query("select count(a) from Request a where a.member.id = ?1 AND a.parade.id = ?2 AND (a.status='APPROVED' OR a.status='PENDING')")
	Integer findRepeated(int memberId, int paradeId);

	@Query("select r from Request r where r.place.id = ?1")
	Collection<Request> findAllByPlace(int placeId);
}
